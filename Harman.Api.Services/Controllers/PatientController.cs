using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using AutoMapper;
using Harman.Api.Services.Model;
using Harman.Business;
using Harman.Data.Entity.Entities;
using Harman.Data.Entity.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;


namespace Harman.Api.Services.Controllers
{
    
    [Produces("application/json")]
    [Route("api/Patient")]
    
    public class PatientController : Controller
    {
        private readonly IPatient _patient;
        private readonly IMapper _map;
        public PatientController(IPatient patient,IMapper mapper)
        {
            _patient = patient;
            _map = mapper;
        }

        [HttpGet]
        public IActionResult GetPatientsDetails()
        {
            return Ok(_patient.GetPatients());
        }

    }
}