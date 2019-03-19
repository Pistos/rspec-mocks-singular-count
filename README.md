# RSpec Mocks: Singular counts

We should be allowed to write expressions like:

    expect(something).to receive(:method).exactly(1).time
    expect(something).to receive(:method).at_least(1).time
    expect(something).to receive(:method).at_most(1).time

Instead, we must write one of these forms:

    expect(something).to receive(:method).exactly(1).times
    expect(something).to receive(:method).once
    expect(something).to receive(:method).at_least(1).times
    expect(something).to receive(:method).at_most(1).times

## Setup

    bundle install

## Demonstration

    bundle exec rspec
