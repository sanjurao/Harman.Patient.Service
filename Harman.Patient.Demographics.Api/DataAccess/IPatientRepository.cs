using Harman.Data.Entity.Entities;
using Harman.Data.Entity.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Harman.Data.Entity.DataAccess
{
    public interface IPatientRepository
    {
        List<TblPatient> GetPatients();
    }
}
