using PruebaTec.Data;
using PruebaTec.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTec.Business
{
    public abstract class BaseCRUD<T> : IBusiness<T>
    {
        public readonly EvoltisContext _context;

        public BaseCRUD()
        {
            _context = new EvoltisContext();
        }

        public abstract void Add(T newObj);
        public abstract void Delete(int id);
        public abstract List<T> GetAll();
        public abstract T GetById(int id);
        public abstract void Update(T obj);
        public abstract List<T> FindByName(string name);
    }
}
