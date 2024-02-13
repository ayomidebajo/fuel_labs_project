contract;

storage {
    counter: u64 = 0,
}

abi Counter {
    #[storage(read, write)]
    fn increment();

    // NEW FEATURE
    #[storage(read, write)]
    fn decrement();

    // NEW FEATURE
    #[storage(write)]
    fn reset();

    #[storage(read)]
    fn count() -> u64;
}

impl Counter for Contract {
    #[storage(read, write)]
    fn increment() {
        let incremented = storage.counter.read() + 1;
        storage.counter.write(incremented);
    }

    // NEW FEATURE
    #[storage(read, write)]
    fn decrement() {
        let decremented = storage.counter.read() - 1;
        storage.counter.write(decremented);
    }

    // NEW FEATURE
    #[storage(write)]
    fn reset() {
        storage.counter.write(0);
    }

    #[storage(read)]
    fn count() -> u64 {
        storage.counter.read()
    }

    // todo: remove ds_store file from the repo
}
