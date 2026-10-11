import Testing
@testable import DesignSystem

@Test func insetsEquality() {
    #expect(Insets.eachSide(8) == Insets.eachSide(8))
    #expect(Insets.eachSide(8) != Insets.custom(top: 8, bottom: 8, left: 8, right: 8))
}
