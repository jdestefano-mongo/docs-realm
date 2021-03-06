[realm transactionWithBlock:^() {
    // Create a person to take care of some dogs.
    Person *ali = [[Person alloc] initWithValue:@{@"ID": @1, @"name": @"Ali"}];
    [realm addObject:ali];

    // Find dogs younger than 2.
    RLMResults<Dog *> *puppies = [Dog objectsInRealm:realm where:@"age < 2"];

    // Batch update: give all puppies to Ali.
    [puppies setValue:ali forKey:@"owner"];
}];
