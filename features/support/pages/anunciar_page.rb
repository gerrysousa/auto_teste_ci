
class AnunciarPage
    include Capybara::DSL

    def novo(veiculo, blindado)
        # puts('entrou metodo novo veiculo')
        # puts(veiculo)
        seleciona_marca(veiculo[:marca])
        escolhe_modelo(veiculo[:modelo])

        find('#version').set veiculo[:versao]
        find('#year').set veiculo[:ano]
        find('#price').set veiculo[:preco]

        marca_blindado if blindado == true

        find('#sell-my-car').click
    end

    private 

    def seleciona_marca(marca)
        find('#brand').find('option', text: marca).select_option
    end

    def escolhe_modelo(modelo)
        find("input[type=radio][value=#{modelo}").click();
    end

    def marca_blindado
        find('#armoredCar').click
    end

end
  