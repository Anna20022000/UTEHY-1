﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UTEHY.Model.Dtos;
using UTEHY.Model.ViewModel;
using UTEHY.Service.Interfaces;
using UTEHY.WebApp.Common;

namespace UTEHY.WebApp.Areas.Admin.Controllers
{
    public class UserController : BaseController
    {
        private IUserService _userService;

        public UserController(IUserService userService)
        {
            _userService = userService;
        }
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetMenuByUserPermission()
        {
            var userSession = (UserLogin)Session[UserCommon.USER_SESSION];
            var result = _userService.GetMenuByUserPermission(userSession.UserId);
            if(result!= null)
            {
                return Json(new { result }, JsonRequestBehavior.AllowGet );
            }
            else
            {
                return Json(new { }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult GetAllPaging(string keyword, PageRequest request, string groupId)
        {
            var result = _userService.GetAllPaging(keyword, request, groupId);
            if(result != null)
            {
                return Json(new { result }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult AddUser(UserViewModel userVm)
        {
            var result = _userService.Add(userVm);
            if(result == true)
            {
                _userService.Save();
                return Json(new { result = true }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { result = false }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult UpdateUser(UserViewModel userVm)
        {
            var result = _userService.Update(userVm);
            if (result == true)
            {
                _userService.Save();
                return Json(new { result = true }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { result = false }, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult DeleteUser(string userId)
        {
            var result = _userService.Delete(userId);
            if (result == true)
            {
                _userService.Save();
                return Json(new { result = true }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { result = false }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}