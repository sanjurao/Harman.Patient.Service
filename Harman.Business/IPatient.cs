using Harman.Data.Entity.Entities;
using Harman.Data.Entity.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Harman.Business
{
    public interface IPatient
    {
        List<TblPatient> GetPatients();
    }
}
