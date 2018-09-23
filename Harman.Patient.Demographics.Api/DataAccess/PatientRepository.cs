using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Harman.Data.Entity.Entities;
using Harman.Data.Entity.Models;
using Microsoft.EntityFrameworkCore;

namespace Harman.Data.Entity.DataAccess
{
    public class PatientRepository : IPatientRepository
    {
        private readonly HealthCareMainDBContext  _entityDBContext;
        public PatientRepository(HealthCareMainDBContext dbContext)
        {
            _entityDBContext = dbContext;
        }

        public List<TblPatient> GetPatients()
        {
            var res = _entityDBContext.TblPatient.Include(t =>  t.TblTelephone).ToList();
            return  res;
        }
    }
}
