using System;
using System.Collections.Generic;
using Harman.Data.Entity.DataAccess;
using Harman.Data.Entity.Entities;
using Harman.Data.Entity.Models;

namespace Harman.Business
{
    public class Patient : IPatient
    {
        private readonly IPatientRepository _patientRepository;
        public Patient(IPatientRepository patientRepository)
        {
            _patientRepository = patientRepository;
        }

        public List<TblPatient> GetPatients()
        {
            return _patientRepository.GetPatients();
        }        
    }
}
