﻿using FisiksAppWeb.Entities;
using FisiksAppWeb.Util;
using FisykDAL.Util;
using Oracle.DataAccess.Client;

namespace FisykDAL.Parsers
{
    internal class DpPacienteOs : DtoParserSqlOracle
    {
        private int _ordOspId;
        private int _ordOspPaeId;
        private int _ordOspOsoId;
        private int _ordOspNroSocio;

        internal override void PopulateOrdinals(OracleDataReader reader)
        {
            _ordOspId = reader.GetOrdinal("ospId");
            _ordOspPaeId = reader.GetOrdinal("osp_paeId");
            _ordOspOsoId = reader.GetOrdinal("osp_osoId");
            _ordOspNroSocio = reader.GetOrdinal("OspNroSocio");
        }

        internal override DtoBase PopulateDto(OracleDataReader reader)
        {
            var pacienteOs = new PacienteOsDto();
            // 
            if (!reader.IsDBNull(_ordOspId)) { pacienteOs.OspId = reader.GetInt32(_ordOspId); }
            // 
            if (!reader.IsDBNull(_ordOspPaeId)) { pacienteOs.OspPaeId = reader.GetInt32(_ordOspPaeId); }
            // 
            if (!reader.IsDBNull(_ordOspOsoId)) { pacienteOs.OspOsoId = reader.GetInt32(_ordOspOsoId); }
            // 
            if (!reader.IsDBNull(_ordOspNroSocio)) { pacienteOs.OspNroSocio = reader.GetInt64(_ordOspNroSocio); }
            // IsNew
            pacienteOs.IsNew = false;

            return pacienteOs;
        }
    }
}
