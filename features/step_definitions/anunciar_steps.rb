Dado("que acessei o formulario de anuncios de veiculos") do
    @nav.vai_para_anuncio
  end

 
Dado("que possuo o seguinte veículo") do |table|
    @anuncio = table.hashes 
    DAO.new.remover_veiculo(@anuncio.first)   
end
  
Dado("eu já cadastrei esse anúncio anteriormente") do
    @veiculo = @anuncio.first
    @anuncio_page.novo(@veiculo, @blindado)
    @swal.ok
    @nav.vai_para_anuncio
end
  
Dado("esse veículo é blindado") do
   @blindado = true
end

Quando("faço anúncio deste veículo") do
    @veiculo = @anuncio.first
    @anuncio_page.novo(@veiculo, @blindado)
end

Então("vejo a seguinte mensagem:") do |mensagem|
    expect(@swal.mensagem.text).to eql mensagem
    @swal.ok
end
