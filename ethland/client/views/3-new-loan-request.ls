Router.route \new_loan_request, path:\new-loan-request template:\newLoanRequest

template \newLoanRequest -> main_blaze D \message,

    p style:\font-size:20px,
        "This includes " b '0.2 ETH'; " platform fees and can take 3-5 minutes"

    p style:\font-size:20px,
        'New ' b 'Loan Request'; ' will be then available in ’All Loan Requests’ window.'
    button class:'new-loan-request', 'New loan request',



Template.newLoanRequest.events do
    'click .new-loan-request':->

        transact = {
            from:  web3.eth.defaultAccount
            to:    config.ETH_MAIN_ADDRESS
            value: 200000000000000000
            gas:   2900000
        }
        web3.eth.sendTransaction transact, (err,res)-> 
            if err => console.log \err:   err
            if res => console.log \thash: res
        
# lr.setData('0x9fb3a816ece6eaa498c73f87f6f4a1258be4302b')(
#     1000000000000000000,   
#     100,                    
#     1000000000,             
#     'token-shpoken',            
#     'token-shpoken-infolink',
#     config.ETH_MAIN_ADDRESS,
#     12, 
#     conscb                      
# )

# 1. Добавить возможность добавлять данные по форме и кнопке 'Set data'
# 2. Сделать так, чтобы диаграмма изменяла состояние
# 3. Добавить обработчики ввода в loan-request, все эти кружочки и прочее



# Template.newLoanRequest.events do
#     'click .new-loan-request':->
#         transact = {
#             from:   web3.eth.defaultAccount
#             to:     config.ETH_MAIN_ADDRESS
#             value:  500000
#         }
#         console.log transact
#         web3.eth.sendTransaction transact, (err,res)-> 
#             if err => alert err
#             if res => Router.go \/loan-request/ + res
        
