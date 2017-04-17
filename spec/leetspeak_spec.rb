require('rspec')
require('leetspeak')

describe("String#leetspeak") do
  it('replaces every "e" in a string with a "3"') do
    expect('eleven'.leetspeak).to(eq('3l3v3n'))
  end
  it('replaces every "o" in a string with a "0"') do
    expect("open".leetspeak).to(eq('0p3n'))
  end
  it('replaces every "I" in a string with a "1"') do
    expect("Ionized".leetspeak).to(eq("10niz3d"))
  end
  it('replaces every "s" in a string with a "z"') do
    expect("roses".leetspeak).to(eq('r0z3z'))
  end
  it('does NOT replace the first letter when it is an s') do
    expect("seventeen".leetspeak).to(eq("s3v3nt33n"))
  end
  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream.".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am."))
  end
end
