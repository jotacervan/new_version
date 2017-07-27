class Webservices::SyndicateController < WebservicesController

	# =============================================================
	#                        SIGNIN METHOD
	# =============================================================
	api :GET, '/syndicate/getSyndicates', "Get Syndicates"
  	formats ['json']
  	param :city_id, String, :desc => "CPF ( 999.999.999-99 )", :required => true, :missing_message => lambda { "Id do municipo ausente" }
  	error 401, "Você precisa fazer o login para continuar"
  	error 402, "Nenhum sindicato encontrado"
  	error 500, "Erro desconhecido"
  	example "Exemplo de retorno quando sindicatos forem encontrados
  	{
  		:message => 'Foram encontrados x sindicatos',
  		:syndicates => [
  			{
				:id => 192863tgv9146v4910y1b4,
				:name => 'Nome',
				:long_name => 'Nome long',
				:description => 'Descrição'
  			},
  			{
				:id => 192863tgv9146v4910y1b4,
				:name => 'Nome',
				:long_name => 'Nome long',
				:description => 'Descrição'
  			}
  		]
  	} "
  	example "Exemplo de retorno quando não forem encontrados sindicator

  	{ 
  		:message => 'Nenhum sindicato encontrado', 
  	} "
	def getSyndicates
		u = Syndicate.all

		if u.blank?
			render :json => { :message => 'Nenhum sindicato encontrado' }, :status => 402
		else
			render :json => { :message => 'Sucesso' }, :status => 200
		end
	end

end
