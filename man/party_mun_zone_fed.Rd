% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/party_mun_zone_fed.R
\name{party_mun_zone_fed}
\alias{party_mun_zone_fed}
\title{Download data on the polls by parties from federal elections in Brazil}
\usage{
party_mun_zone_fed(year, uf = "all", ascii = FALSE, encoding = "Latin-1",
  export = FALSE)
}
\arguments{
\item{year}{Election year. For this function, only the years 1998, 2002, 2006, 2010, and 2014
are available.}

\item{uf}{Filter results by Federation Unit acronym (\code{character vector}).}

\item{ascii}{(\code{logical}). Should the text be transformed from Latin-1 to ASCII format?}

\item{encoding}{Data original encoding (defaults to 'Latin-1'). This can be changed to avoid errors
when \code{ascii = TRUE}.}

\item{export}{(\code{logical}). Should the downloaded data be saved in .dta and .sav in the current directory?}
}
\value{
\code{party_mun_zone_fed()} returns a \code{data.frame} with the following variables:

\itemize{
  \item DATA_GERACAO: Generation date of the file (when the data was collected).
  \item HORA_GERACAO: Generation time of the file (when the data was collected), Brasilia Time.
  \item ANO_ELEICAO: Election year.
  \item NUM_TURNO: Round number.
  \item DESCRICAO_ELEICAO: Description of the election.
  \item SIGLA_UF: Units of the Federation's acronym in which occurred the election.
  \item SIGLA_UE: Units of the Federation's acronym (In case of major election is the FU's
  acronym in which the candidate runs for (text) and in case of municipal election is the
  municipal's Supreme Electoral Court code (number)). Assume the special values BR, ZZ and
  VT to designate, respectively, Brazil, Overseas and Absentee Ballot.
  \item CODIGO_MUNICIPIO: Supreme Electoral code from the city where occurred the election.
  \item NOME_MUNICIPIO: Name of the city where occurred the election.
  \item NUMERO_ZONA: Zone number.
  \item CODIGO_CARGO: Code of the position that the candidate runs for.
  \item DESCRICAO_CARGO: Description of the position that the candidate runs for.
  \item TIPO_LEGENDA: It informs it the candidate runs for 'coalition' or 'isolated party'.
  \item NOME_COLIGACAO: Coalition name.
  \item COMPOSICAO_LEGENDA: Coalition's composition.
  \item NUMERO_PARTIDO: Party number.
  \item SIGLA_PARTIDO: Party's acronym.
  \item NOME_PARTIDO: Party name.
  \item QTDE_VOTOS_NOMINAIS: Total number of nominal votes that a party received in that city and zone.
  \item QTDE_VOTOS_LEGENDA: Total number of votes that a coalitions received in that city and zone.
  \item SEQUENCIAL_LEGENDA: Coalition's sequential number, generated internally by the electoral justice.
  \item TRANSITO: It informs whether the record relates or not to absentee ballot votes (only for 2014 election).
}
}
\description{
\code{party_mun_zone_fed()} downloads and aggregates the data on the polls by parties from the federal elections in Brazil,
disaggregated by cities and electoral zones. The function returns a \code{data.frame} where each observation
corresponds to a city/zone.
}
\details{
If export is set to \code{TRUE}, the downloaded data is saved as .dta and .sav
 files in the current directory.
}
\note{
For the elections prior to 2002, some information can be incomplete. For the 2014 elections, one more variable is available.
}
\examples{
\dontrun{
df <- party_mun_zone_fed(2002)
}
}
\seealso{
\code{\link{party_mun_zone_local}} for local elections in Brazil.
}
