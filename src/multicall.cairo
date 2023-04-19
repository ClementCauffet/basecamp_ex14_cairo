//ABI Imports
#[abi]
trait IEx01 {
    #[external]
    fn claim_points();
}

#[contract]
mod IAllInOneContract {

    //Core library imports
    use starknet::get_caller_address;
    use starknet::ContractAddress;    
    


    //Internal Imports
    use super::IEx01DispatcherTrait;
    use super::IEx01Dispatcher;
    
        
    #[external]
    fn validate_various_exercises() {
        let _currentContractAddress = get_caller_address();

        //Exercise 1
        let _exercise_1_contract_address = starknet::contract_address_const::<0x031d1866cb827c4e27bbca9ffee59fa2158b679413ffb58c3f90af56e1140e85>();
        IEx01Dispatcher {contract_address : _exercise_1_contract_address }.claim_points();

        //Exercise 2
        //Exercise 3 
        // ... up to 10

    }

}
