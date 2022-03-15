//
//  File.swift
//  
//
//  Created by Zhijin Chen on 2022/03/13.
//

import XCTest
import CommonInk

final class CommonMarkTests: XCTestCase {
    let parser = MarkdownParser()
    
    func testAAA() {
        let parser = MarkdownParser()
        let markdown = """
        > foo
        bar
        ===
        
        """
        let target = "<blockquote>\n<p>foo\nbar\n===</p>\n</blockquote>"
        let html = parser.html(from: markdown)
        XCTAssertEqual(html, target)
        
    }
    
    func testPrintAll() {
        
        let testAll = "func testAll() {\n" + TestCase.all.map({ test -> String in "    testExample\(test.example)()" }).joined(separator: "\n") + "}\n\n"
        print(testAll)
        
        for test in TestCase.all {
            var target = test.html.replacingOccurrences(of: ">\n<", with: "><")
                .replacingOccurrences(of: "\\", with: "\\\\")
                .replacingOccurrences(of: "\"", with: "\\\"")
            while target.hasSuffix("\n") {
                target = String(target.dropLast())
            }
            
            
            var markdown = test.markdown
                .replacingOccurrences(of: "\\", with: "\\\\")
                .replacingOccurrences(of: "\"", with: "\\\"")
            if markdown.hasSuffix("\n") {
                markdown = String(markdown.dropLast())
            }
            
            markdown = markdown.split(separator: "\n").map({ "    \($0)" }).joined(separator: "\n")
            target = target.split(separator: "\n").map({ "    \($0)" }).joined(separator: "\n")
            
            print("""
            func testExample\(test.example)() {
                let markdown = \"\"\"
            \(markdown)
                \"\"\"
                let target = \"\"\"
            \(target)
                \"\"\"
                let html = parser.html(from: markdown)
                XCTAssertEqual(html, target, markdown)
            }

            """)
        }
        XCTAssert(true)
        
    }
    
func testAll() {
    testExample1()
    testExample2()
    testExample3()
    testExample4()
    testExample5()
    testExample6()
    testExample7()
    testExample8()
    testExample9()
    testExample10()
    testExample11()
    testExample12()
    testExample13()
    testExample14()
    testExample15()
    testExample16()
    testExample17()
    testExample18()
    testExample19()
    testExample20()
    testExample21()
    testExample22()
    testExample23()
    testExample24()
    testExample25()
    testExample26()
    testExample27()
    testExample28()
    testExample29()
    testExample30()
    testExample31()
    testExample32()
    testExample33()
    testExample34()
    testExample35()
    testExample36()
    testExample37()
    testExample38()
    testExample39()
    testExample40()
    testExample41()
    testExample42()
    testExample43()
    testExample44()
    testExample45()
    testExample46()
    testExample47()
    testExample48()
    testExample49()
    testExample50()
    testExample51()
    testExample52()
    testExample53()
    testExample54()
    testExample55()
    testExample56()
    testExample57()
    testExample58()
    testExample59()
    testExample60()
    testExample61()
    testExample62()
    testExample63()
    testExample64()
    testExample65()
    testExample66()
    testExample67()
    testExample68()
    testExample69()
    testExample70()
    testExample71()
    testExample72()
    testExample73()
    testExample74()
    testExample75()
    testExample76()
    testExample77()
    testExample78()
    testExample79()
    testExample80()
    testExample81()
    testExample82()
    testExample83()
    testExample84()
    testExample85()
    testExample86()
    testExample87()
    testExample88()
    testExample89()
    testExample90()
    testExample91()
    testExample92()
    testExample93()
    testExample94()
    testExample95()
    testExample96()
    testExample97()
    testExample98()
    testExample99()
    testExample100()
    testExample101()
    testExample102()
    testExample103()
    testExample104()
    testExample105()
    testExample106()
    testExample107()
    testExample108()
    testExample109()
    testExample110()
    testExample111()
    testExample112()
    testExample113()
    testExample114()
    testExample115()
    testExample116()
    testExample117()
    testExample118()
    testExample119()
    testExample120()
    testExample121()
    testExample122()
    testExample123()
    testExample124()
    testExample125()
    testExample126()
    testExample127()
    testExample128()
    testExample129()
    testExample130()
    testExample131()
    testExample132()
    testExample133()
    testExample134()
    testExample135()
    testExample136()
    testExample137()
    testExample138()
    testExample139()
    testExample140()
    testExample141()
    testExample142()
    testExample143()
    testExample144()
    testExample145()
    testExample146()
    testExample147()
    testExample148()
    testExample149()
    testExample150()
    testExample151()
    testExample152()
    testExample153()
    testExample154()
    testExample155()
    testExample156()
    testExample157()
    testExample158()
    testExample159()
    testExample160()
    testExample161()
    testExample162()
    testExample163()
    testExample164()
    testExample165()
    testExample166()
    testExample167()
    testExample168()
    testExample169()
    testExample170()
    testExample171()
    testExample172()
    testExample173()
    testExample174()
    testExample175()
    testExample176()
    testExample177()
    testExample178()
    testExample179()
    testExample180()
    testExample181()
    testExample182()
    testExample183()
    testExample184()
    testExample185()
    testExample186()
    testExample187()
    testExample188()
    testExample189()
    testExample190()
    testExample191()
    testExample192()
    testExample193()
    testExample194()
    testExample195()
    testExample196()
    testExample197()
    testExample198()
    testExample199()
    testExample200()
    testExample201()
    testExample202()
    testExample203()
    testExample204()
    testExample205()
    testExample206()
    testExample207()
    testExample208()
    testExample209()
    testExample210()
    testExample211()
    testExample212()
    testExample213()
    testExample214()
    testExample215()
    testExample216()
    testExample217()
    testExample218()
    testExample219()
    testExample220()
    testExample221()
    testExample222()
    testExample223()
    testExample224()
    testExample225()
    testExample226()
    testExample227()
    testExample228()
    testExample229()
    testExample230()
    testExample231()
    testExample232()
    testExample233()
    testExample234()
    testExample235()
    testExample236()
    testExample237()
    testExample238()
    testExample239()
    testExample240()
    testExample241()
    testExample242()
    testExample243()
    testExample244()
    testExample245()
    testExample246()
    testExample247()
    testExample248()
    testExample249()
    testExample250()
    testExample251()
    testExample252()
    testExample253()
    testExample254()
    testExample255()
    testExample256()
    testExample257()
    testExample258()
    testExample259()
    testExample260()
    testExample261()
    testExample262()
    testExample263()
    testExample264()
    testExample265()
    testExample266()
    testExample267()
    testExample268()
    testExample269()
    testExample270()
    testExample271()
    testExample272()
    testExample273()
    testExample274()
    testExample275()
    testExample276()
    testExample277()
    testExample278()
    testExample279()
    testExample280()
    testExample281()
    testExample282()
    testExample283()
    testExample284()
    testExample285()
    testExample286()
    testExample287()
    testExample288()
    testExample289()
    testExample290()
    testExample291()
    testExample292()
    testExample293()
    testExample294()
    testExample295()
    testExample296()
    testExample297()
    testExample298()
    testExample299()
    testExample300()
    testExample301()
    testExample302()
    testExample303()
    testExample304()
    testExample305()
    testExample306()
    testExample307()
    testExample308()
    testExample309()
    testExample310()
    testExample311()
    testExample312()
    testExample313()
    testExample314()
    testExample315()
    testExample316()
    testExample317()
    testExample318()
    testExample319()
    testExample320()
    testExample321()
    testExample322()
    testExample323()
    testExample324()
    testExample325()
    testExample326()
    testExample327()
    testExample328()
    testExample329()
    testExample330()
    testExample331()
    testExample332()
    testExample333()
    testExample334()
    testExample335()
    testExample336()
    testExample337()
    testExample338()
    testExample339()
    testExample340()
    testExample341()
    testExample342()
    testExample343()
    testExample344()
    testExample345()
    testExample346()
    testExample347()
    testExample348()
    testExample349()
    testExample350()
    testExample351()
    testExample352()
    testExample353()
    testExample354()
    testExample355()
    testExample356()
    testExample357()
    testExample358()
    testExample359()
    testExample360()
    testExample361()
    testExample362()
    testExample363()
    testExample364()
    testExample365()
    testExample366()
    testExample367()
    testExample368()
    testExample369()
    testExample370()
    testExample371()
    testExample372()
    testExample373()
    testExample374()
    testExample375()
    testExample376()
    testExample377()
    testExample378()
    testExample379()
    testExample380()
    testExample381()
    testExample382()
    testExample383()
    testExample384()
    testExample385()
    testExample386()
    testExample387()
    testExample388()
    testExample389()
    testExample390()
    testExample391()
    testExample392()
    testExample393()
    testExample394()
    testExample395()
    testExample396()
    testExample397()
    testExample398()
    testExample399()
    testExample400()
    testExample401()
    testExample402()
    testExample403()
    testExample404()
    testExample405()
    testExample406()
    testExample407()
    testExample408()
    testExample409()
    testExample410()
    testExample411()
    testExample412()
    testExample413()
    testExample414()
    testExample415()
    testExample416()
    testExample417()
    testExample418()
    testExample419()
    testExample420()
    testExample421()
    testExample422()
    testExample423()
    testExample424()
    testExample425()
    testExample426()
    testExample427()
    testExample428()
    testExample429()
    testExample430()
    testExample431()
    testExample432()
    testExample433()
    testExample434()
    testExample435()
    testExample436()
    testExample437()
    testExample438()
    testExample439()
    testExample440()
    testExample441()
    testExample442()
    testExample443()
    testExample444()
    testExample445()
    testExample446()
    testExample447()
    testExample448()
    testExample449()
    testExample450()
    testExample451()
    testExample452()
    testExample453()
    testExample454()
    testExample455()
    testExample456()
    testExample457()
    testExample458()
    testExample459()
    testExample460()
    testExample461()
    testExample462()
    testExample463()
    testExample464()
    testExample465()
    testExample466()
    testExample467()
    testExample468()
    testExample469()
    testExample470()
    testExample471()
    testExample472()
    testExample473()
    testExample474()
    testExample475()
    testExample476()
    testExample477()
    testExample478()
    testExample479()
    testExample480()
    testExample481()
    testExample482()
    testExample483()
    testExample484()
    testExample485()
    testExample486()
    testExample487()
    testExample488()
    testExample489()
    testExample490()
    testExample491()
    testExample492()
    testExample493()
    testExample494()
    testExample495()
    testExample496()
    testExample497()
    testExample498()
    testExample499()
    testExample500()
    testExample501()
    testExample502()
    testExample503()
    testExample504()
    testExample505()
    testExample506()
    testExample507()
    testExample508()
    testExample509()
    testExample510()
    testExample511()
    testExample512()
    testExample513()
    testExample514()
    testExample515()
    testExample516()
    testExample517()
    testExample518()
    testExample519()
    testExample520()
    testExample521()
    testExample522()
    testExample523()
    testExample524()
    testExample525()
    testExample526()
    testExample527()
    testExample528()
    testExample529()
    testExample530()
    testExample531()
    testExample532()
    testExample533()
    testExample534()
    testExample535()
    testExample536()
    testExample537()
    testExample538()
    testExample539()
    testExample540()
    testExample541()
    testExample542()
    testExample543()
    testExample544()
    testExample545()
    testExample546()
    testExample547()
    testExample548()
    testExample549()
    testExample550()
    testExample551()
    testExample552()
    testExample553()
    testExample554()
    testExample555()
    testExample556()
    testExample557()
    testExample558()
    testExample559()
    testExample560()
    testExample561()
    testExample562()
    testExample563()
    testExample564()
    testExample565()
    testExample566()
    testExample567()
    testExample568()
    testExample569()
    testExample570()
    testExample571()
    testExample572()
    testExample573()
    testExample574()
    testExample575()
    testExample576()
    testExample577()
    testExample578()
    testExample579()
    testExample580()
    testExample581()
    testExample582()
    testExample583()
    testExample584()
    testExample585()
    testExample586()
    testExample587()
    testExample588()
    testExample589()
    testExample590()
    testExample591()
    testExample592()
    testExample593()
    testExample594()
    testExample595()
    testExample596()
    testExample597()
    testExample598()
    testExample599()
    testExample600()
    testExample601()
    testExample602()
    testExample603()
    testExample604()
    testExample605()
    testExample606()
    testExample607()
    testExample608()
    testExample609()
    testExample610()
    testExample611()
    testExample612()
    testExample613()
    testExample614()
    testExample615()
    testExample616()
    testExample617()
    testExample618()
    testExample619()
    testExample620()
    testExample621()
    testExample622()
    testExample623()
    testExample624()
    testExample625()
    testExample626()
    testExample627()
    testExample628()
    testExample629()
    testExample630()
    testExample631()
    testExample632()
    testExample633()
    testExample634()
    testExample635()
    testExample636()
    testExample637()
    testExample638()
    testExample639()
    testExample640()
    testExample641()
    testExample642()
    testExample643()
    testExample644()
    testExample645()
    testExample646()
    testExample647()
    testExample648()
    testExample649()}


func testExample1() {
    let markdown = """
        foo baz     bim
    """
    let target = """
    <pre><code>foo  baz     bim</code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample2() {
    let markdown = """
        foo baz     bim
    """
    let target = """
    <pre><code>foo  baz     bim
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample3() {
    let markdown = """
        a   a
        ὐ   a
    """
    let target = """
    <pre><code>a    a
    ὐ   a
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample4() {
    let markdown = """
      - foo
        bar
    """
    let target = """
    <ul><li><p>foo</p><p>bar</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample5() {
    let markdown = """
    - foo
            bar
    """
    let target = """
    <ul><li><p>foo</p><pre><code>  bar
    </code></pre></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample6() {
    let markdown = """
    >       foo
    """
    let target = """
    <blockquote><pre><code>  foo
    </code></pre></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample7() {
    let markdown = """
    -       foo
    """
    let target = """
    <ul><li><pre><code>  foo
    </code></pre></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample8() {
    let markdown = """
        foo
        bar
    """
    let target = """
    <pre><code>foo
    bar
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample9() {
    let markdown = """
     - foo
       - bar
         - baz
    """
    let target = """
    <ul><li>foo
    <ul><li>bar
    <ul><li>baz</li></ul></li></ul></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample10() {
    let markdown = """
    #   Foo
    """
    let target = """
    <h1>Foo</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample11() {
    let markdown = """
    *   *   *   
    """
    let target = """
    <hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample12() {
    let markdown = """
    - `one
    - two`
    """
    let target = """
    <ul><li>`one</li><li>two`</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample13() {
    let markdown = """
    ***
    ---
    ___
    """
    let target = """
    <hr /><hr /><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample14() {
    let markdown = """
    +++
    """
    let target = """
    <p>+++</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample15() {
    let markdown = """
    ===
    """
    let target = """
    <p>===</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample16() {
    let markdown = """
    --
    **
    __
    """
    let target = """
    <p>--
    **
    __</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample17() {
    let markdown = """
     ***
      ***
       ***
    """
    let target = """
    <hr /><hr /><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample18() {
    let markdown = """
        ***
    """
    let target = """
    <pre><code>***
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample19() {
    let markdown = """
    Foo
        ***
    """
    let target = """
    <p>Foo
    ***</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample20() {
    let markdown = """
    _____________________________________
    """
    let target = """
    <hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample21() {
    let markdown = """
     - - -
    """
    let target = """
    <hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample22() {
    let markdown = """
     **  * ** * ** * **
    """
    let target = """
    <hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample23() {
    let markdown = """
    -     -      -      -
    """
    let target = """
    <hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample24() {
    let markdown = """
    - - - -    
    """
    let target = """
    <hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample25() {
    let markdown = """
    _ _ _ _ a
    a------
    ---a---
    """
    let target = """
    <p>_ _ _ _ a</p><p>a------</p><p>---a---</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample26() {
    let markdown = """
     *-*
    """
    let target = """
    <p><em>-</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample27() {
    let markdown = """
    - foo
    ***
    - bar
    """
    let target = """
    <ul><li>foo</li></ul><hr /><ul><li>bar</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample28() {
    let markdown = """
    Foo
    ***
    bar
    """
    let target = """
    <p>Foo</p><hr /><p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample29() {
    let markdown = """
    Foo
    ---
    bar
    """
    let target = """
    <h2>Foo</h2><p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample30() {
    let markdown = """
    * Foo
    * * *
    * Bar
    """
    let target = """
    <ul><li>Foo</li></ul><hr /><ul><li>Bar</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample31() {
    let markdown = """
    - Foo
    - * * *
    """
    let target = """
    <ul><li>Foo</li><li><hr /></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample32() {
    let markdown = """
    # foo
    ## foo
    ### foo
    #### foo
    ##### foo
    ###### foo
    """
    let target = """
    <h1>foo</h1><h2>foo</h2><h3>foo</h3><h4>foo</h4><h5>foo</h5><h6>foo</h6>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample33() {
    let markdown = """
    ####### foo
    """
    let target = """
    <p>####### foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample34() {
    let markdown = """
    #5 bolt
    #hashtag
    """
    let target = """
    <p>#5 bolt</p><p>#hashtag</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample35() {
    let markdown = """
    \\## foo
    """
    let target = """
    <p>## foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample36() {
    let markdown = """
    # foo *bar* \\*baz\\*
    """
    let target = """
    <h1>foo <em>bar</em> *baz*</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample37() {
    let markdown = """
    #                  foo                     
    """
    let target = """
    <h1>foo</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample38() {
    let markdown = """
     ### foo
      ## foo
       # foo
    """
    let target = """
    <h3>foo</h3><h2>foo</h2><h1>foo</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample39() {
    let markdown = """
        # foo
    """
    let target = """
    <pre><code># foo
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample40() {
    let markdown = """
    foo
        # bar
    """
    let target = """
    <p>foo
    # bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample41() {
    let markdown = """
    ## foo ##
      ###   bar    ###
    """
    let target = """
    <h2>foo</h2><h3>bar</h3>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample42() {
    let markdown = """
    # foo ##################################
    ##### foo ##
    """
    let target = """
    <h1>foo</h1><h5>foo</h5>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample43() {
    let markdown = """
    ### foo ###     
    """
    let target = """
    <h3>foo</h3>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample44() {
    let markdown = """
    ### foo ### b
    """
    let target = """
    <h3>foo ### b</h3>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample45() {
    let markdown = """
    # foo#
    """
    let target = """
    <h1>foo#</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample46() {
    let markdown = """
    ### foo \\###
    ## foo #\\##
    # foo \\#
    """
    let target = """
    <h3>foo ###</h3><h2>foo ###</h2><h1>foo #</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample47() {
    let markdown = """
    ****
    ## foo
    ****
    """
    let target = """
    <hr /><h2>foo</h2><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample48() {
    let markdown = """
    Foo bar
    # baz
    Bar foo
    """
    let target = """
    <p>Foo bar</p><h1>baz</h1><p>Bar foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample49() {
    let markdown = """
    ## 
    #
    ### ###
    """
    let target = """
    <h2></h2><h1></h1><h3></h3>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample50() {
    let markdown = """
    Foo *bar*
    =========
    Foo *bar*
    ---------
    """
    let target = """
    <h1>Foo <em>bar</em></h1><h2>Foo <em>bar</em></h2>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample51() {
    let markdown = """
    Foo *bar
    baz*
    ====
    """
    let target = """
    <h1>Foo <em>bar
    baz</em></h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample52() {
    let markdown = """
      Foo *bar
    baz*    
    ====
    """
    let target = """
    <h1>Foo <em>bar
    baz</em></h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample53() {
    let markdown = """
    Foo
    -------------------------
    Foo
    =
    """
    let target = """
    <h2>Foo</h2><h1>Foo</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample54() {
    let markdown = """
       Foo
    ---
      Foo
    -----
      Foo
      ===
    """
    let target = """
    <h2>Foo</h2><h2>Foo</h2><h1>Foo</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample55() {
    let markdown = """
        Foo
        ---
        Foo
    ---
    """
    let target = """
    <pre><code>Foo
    ---
    Foo
    </code></pre><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample56() {
    let markdown = """
    Foo
       ----      
    """
    let target = """
    <h2>Foo</h2>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample57() {
    let markdown = """
    Foo
        ---
    """
    let target = """
    <p>Foo
    ---</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample58() {
    let markdown = """
    Foo
    = =
    Foo
    --- -
    """
    let target = """
    <p>Foo
    = =</p><p>Foo</p><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample59() {
    let markdown = """
    Foo  
    -----
    """
    let target = """
    <h2>Foo</h2>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample60() {
    let markdown = """
    Foo\\
    ----
    """
    let target = """
    <h2>Foo\\</h2>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample61() {
    let markdown = """
    `Foo
    ----
    `
    <a title=\"a lot
    ---
    of dashes\"/>
    """
    let target = """
    <h2>`Foo</h2><p>`</p><h2>&lt;a title=&quot;a lot</h2><p>of dashes&quot;/&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample62() {
    let markdown = """
    > Foo
    ---
    """
    let target = """
    <blockquote><p>Foo</p></blockquote><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample63() {
    let markdown = """
    > foo
    bar
    ===
    """
    let target = """
    <blockquote><p>foo
    bar
    ===</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample64() {
    let markdown = """
    - Foo
    ---
    """
    let target = """
    <ul><li>Foo</li></ul><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample65() {
    let markdown = """
    Foo
    Bar
    ---
    """
    let target = """
    <h2>Foo
    Bar</h2>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample66() {
    let markdown = """
    ---
    Foo
    ---
    Bar
    ---
    Baz
    """
    let target = """
    <hr /><h2>Foo</h2><h2>Bar</h2><p>Baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample67() {
    let markdown = """
    ====
    """
    let target = """
    <p>====</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample68() {
    let markdown = """
    ---
    ---
    """
    let target = """
    <hr /><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample69() {
    let markdown = """
    - foo
    -----
    """
    let target = """
    <ul><li>foo</li></ul><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample70() {
    let markdown = """
        foo
    ---
    """
    let target = """
    <pre><code>foo
    </code></pre><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample71() {
    let markdown = """
    > foo
    -----
    """
    let target = """
    <blockquote><p>foo</p></blockquote><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample72() {
    let markdown = """
    \\> foo
    ------
    """
    let target = """
    <h2>&gt; foo</h2>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample73() {
    let markdown = """
    Foo
    bar
    ---
    baz
    """
    let target = """
    <p>Foo</p><h2>bar</h2><p>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample74() {
    let markdown = """
    Foo
    bar
    ---
    baz
    """
    let target = """
    <p>Foo
    bar</p><hr /><p>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample75() {
    let markdown = """
    Foo
    bar
    * * *
    baz
    """
    let target = """
    <p>Foo
    bar</p><hr /><p>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample76() {
    let markdown = """
    Foo
    bar
    \\---
    baz
    """
    let target = """
    <p>Foo
    bar
    ---
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample77() {
    let markdown = """
        a simple
          indented code block
    """
    let target = """
    <pre><code>a simple
      indented code block
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample78() {
    let markdown = """
      - foo
        bar
    """
    let target = """
    <ul><li><p>foo</p><p>bar</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample79() {
    let markdown = """
    1.  foo
        - bar
    """
    let target = """
    <ol><li><p>foo</p><ul><li>bar</li></ul></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample80() {
    let markdown = """
        <a/>
        *hi*
        - one
    """
    let target = """
    <pre><code>&lt;a/&gt;
    *hi*
    - one
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample81() {
    let markdown = """
        chunk1
        chunk2
      
     
     
        chunk3
    """
    let target = """
    <pre><code>chunk1
    chunk2
    chunk3
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample82() {
    let markdown = """
        chunk1
          
          chunk2
    """
    let target = """
    <pre><code>chunk1
      
      chunk2
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample83() {
    let markdown = """
    Foo
        bar
    """
    let target = """
    <p>Foo
    bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample84() {
    let markdown = """
        foo
    bar
    """
    let target = """
    <pre><code>foo
    </code></pre><p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample85() {
    let markdown = """
    # Heading
        foo
    Heading
    ------
        foo
    ----
    """
    let target = """
    <h1>Heading</h1><pre><code>foo
    </code></pre><h2>Heading</h2><pre><code>foo
    </code></pre><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample86() {
    let markdown = """
            foo
        bar
    """
    let target = """
    <pre><code>    foo
    bar
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample87() {
    let markdown = """
        
        foo
        
    """
    let target = """
    <pre><code>foo
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample88() {
    let markdown = """
        foo  
    """
    let target = """
    <pre><code>foo  
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample89() {
    let markdown = """
    ```
    <
     >
    ```
    """
    let target = """
    <pre><code>&lt;
     &gt;
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample90() {
    let markdown = """
    ~~~
    <
     >
    ~~~
    """
    let target = """
    <pre><code>&lt;
     &gt;
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample91() {
    let markdown = """
    ``
    foo
    ``
    """
    let target = """
    <p><code>foo</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample92() {
    let markdown = """
    ```
    aaa
    ~~~
    ```
    """
    let target = """
    <pre><code>aaa
    ~~~
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample93() {
    let markdown = """
    ~~~
    aaa
    ```
    ~~~
    """
    let target = """
    <pre><code>aaa
    ```
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample94() {
    let markdown = """
    ````
    aaa
    ```
    ``````
    """
    let target = """
    <pre><code>aaa
    ```
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample95() {
    let markdown = """
    ~~~~
    aaa
    ~~~
    ~~~~
    """
    let target = """
    <pre><code>aaa
    ~~~
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample96() {
    let markdown = """
    ```
    """
    let target = """
    <pre><code></code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample97() {
    let markdown = """
    `````
    ```
    aaa
    """
    let target = """
    <pre><code>
    ```
    aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample98() {
    let markdown = """
    > ```
    > aaa
    bbb
    """
    let target = """
    <blockquote><pre><code>aaa
    </code></pre></blockquote><p>bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample99() {
    let markdown = """
    ```
      
    ```
    """
    let target = """
    <pre><code>
      
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample100() {
    let markdown = """
    ```
    ```
    """
    let target = """
    <pre><code></code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample101() {
    let markdown = """
     ```
     aaa
    aaa
    ```
    """
    let target = """
    <pre><code>aaa
    aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample102() {
    let markdown = """
      ```
    aaa
      aaa
    aaa
      ```
    """
    let target = """
    <pre><code>aaa
    aaa
    aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample103() {
    let markdown = """
       ```
       aaa
        aaa
      aaa
       ```
    """
    let target = """
    <pre><code>aaa
     aaa
    aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample104() {
    let markdown = """
        ```
        aaa
        ```
    """
    let target = """
    <pre><code>```
    aaa
    ```
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample105() {
    let markdown = """
    ```
    aaa
      ```
    """
    let target = """
    <pre><code>aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample106() {
    let markdown = """
       ```
    aaa
      ```
    """
    let target = """
    <pre><code>aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample107() {
    let markdown = """
    ```
    aaa
        ```
    """
    let target = """
    <pre><code>aaa
        ```
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample108() {
    let markdown = """
    ``` ```
    aaa
    """
    let target = """
    <p><code> </code>
    aaa</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample109() {
    let markdown = """
    ~~~~~~
    aaa
    ~~~ ~~
    """
    let target = """
    <pre><code>aaa
    ~~~ ~~
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample110() {
    let markdown = """
    foo
    ```
    bar
    ```
    baz
    """
    let target = """
    <p>foo</p><pre><code>bar
    </code></pre><p>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample111() {
    let markdown = """
    foo
    ---
    ~~~
    bar
    ~~~
    # baz
    """
    let target = """
    <h2>foo</h2><pre><code>bar
    </code></pre><h1>baz</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample112() {
    let markdown = """
    ```ruby
    def foo(x)
      return 3
    end
    ```
    """
    let target = """
    <pre><code class=\"language-ruby\">def foo(x)
      return 3
    end
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample113() {
    let markdown = """
    ~~~~    ruby startline=3 $%@#$
    def foo(x)
      return 3
    end
    ~~~~~~~
    """
    let target = """
    <pre><code class=\"language-ruby\">def foo(x)
      return 3
    end
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample114() {
    let markdown = """
    ````;
    ````
    """
    let target = """
    <pre><code class=\"language-;\"></code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample115() {
    let markdown = """
    ``` aa ```
    foo
    """
    let target = """
    <p><code>aa</code>
    foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample116() {
    let markdown = """
    ~~~ aa ``` ~~~
    foo
    ~~~
    """
    let target = """
    <pre><code class=\"language-aa\">foo
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample117() {
    let markdown = """
    ```
    ``` aaa
    ```
    """
    let target = """
    <pre><code>``` aaa
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample118() {
    let markdown = """
    <table><tr><td>
    <pre>
    **Hello**,
    _world_.
    </pre>
    </td></tr></table>
    """
    let target = """
    <table><tr><td><pre>
    **Hello**,
    <p><em>world</em>.
    </pre></p></td></tr></table>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample119() {
    let markdown = """
    <table>
      <tr>
        <td>
               hi
        </td>
      </tr>
    </table>
    okay.
    """
    let target = """
    <table>
      <tr>
        <td>
               hi
        </td>
      </tr></table><p>okay.</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample120() {
    let markdown = """
     <div>
      *hello*
             <foo><a>
    """
    let target = """
     <div>
      *hello*
             <foo><a>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample121() {
    let markdown = """
    </div>
    *foo*
    """
    let target = """
    </div>
    *foo*
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample122() {
    let markdown = """
    <DIV CLASS=\"foo\">
    *Markdown*
    </DIV>
    """
    let target = """
    <DIV CLASS=\"foo\"><p><em>Markdown</em></p></DIV>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample123() {
    let markdown = """
    <div id=\"foo\"
      class=\"bar\">
    </div>
    """
    let target = """
    <div id=\"foo\"
      class=\"bar\"></div>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample124() {
    let markdown = """
    <div id=\"foo\" class=\"bar
      baz\">
    </div>
    """
    let target = """
    <div id=\"foo\" class=\"bar
      baz\"></div>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample125() {
    let markdown = """
    <div>
    *foo*
    *bar*
    """
    let target = """
    <div>
    *foo*
    <p><em>bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample126() {
    let markdown = """
    <div id=\"foo\"
    *hi*
    """
    let target = """
    <div id=\"foo\"
    *hi*
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample127() {
    let markdown = """
    <div class
    foo
    """
    let target = """
    <div class
    foo
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample128() {
    let markdown = """
    <div *???-&&&-<---
    *foo*
    """
    let target = """
    <div *???-&&&-<---
    *foo*
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample129() {
    let markdown = """
    <div><a href=\"bar\">*foo*</a></div>
    """
    let target = """
    <div><a href=\"bar\">*foo*</a></div>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample130() {
    let markdown = """
    <table><tr><td>
    foo
    </td></tr></table>
    """
    let target = """
    <table><tr><td>
    foo
    </td></tr></table>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample131() {
    let markdown = """
    <div></div>
    ``` c
    int x = 33;
    ```
    """
    let target = """
    <div></div>
    ``` c
    int x = 33;
    ```
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample132() {
    let markdown = """
    <a href=\"foo\">
    *bar*
    </a>
    """
    let target = """
    <a href=\"foo\">
    *bar*
    </a>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample133() {
    let markdown = """
    <Warning>
    *bar*
    </Warning>
    """
    let target = """
    <Warning>
    *bar*
    </Warning>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample134() {
    let markdown = """
    <i class=\"foo\">
    *bar*
    </i>
    """
    let target = """
    <i class=\"foo\">
    *bar*
    </i>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample135() {
    let markdown = """
    </ins>
    *bar*
    """
    let target = """
    </ins>
    *bar*
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample136() {
    let markdown = """
    <del>
    *foo*
    </del>
    """
    let target = """
    <del>
    *foo*
    </del>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample137() {
    let markdown = """
    <del>
    *foo*
    </del>
    """
    let target = """
    <del><p><em>foo</em></p></del>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample138() {
    let markdown = """
    <del>*foo*</del>
    """
    let target = """
    <p><del><em>foo</em></del></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample139() {
    let markdown = """
    <pre language=\"haskell\"><code>
    import Text.HTML.TagSoup
    main :: IO ()
    main = print $ parseTags tags
    </code></pre>
    okay
    """
    let target = """
    <pre language=\"haskell\"><code>
    import Text.HTML.TagSoup
    main :: IO ()
    main = print $ parseTags tags
    </code></pre><p>okay</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample140() {
    let markdown = """
    <script type=\"text/javascript\">
    // JavaScript example
    document.getElementById(\"demo\").innerHTML = \"Hello JavaScript!\";
    </script>
    okay
    """
    let target = """
    <script type=\"text/javascript\">
    // JavaScript example
    document.getElementById(\"demo\").innerHTML = \"Hello JavaScript!\";
    </script><p>okay</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample141() {
    let markdown = """
    <style
      type=\"text/css\">
    h1 {color:red;}
    p {color:blue;}
    </style>
    okay
    """
    let target = """
    <style
      type=\"text/css\">
    h1 {color:red;}
    p {color:blue;}
    </style><p>okay</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample142() {
    let markdown = """
    <style
      type=\"text/css\">
    foo
    """
    let target = """
    <style
      type=\"text/css\">
    foo
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample143() {
    let markdown = """
    > <div>
    > foo
    bar
    """
    let target = """
    <blockquote><div>
    foo
    </blockquote><p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample144() {
    let markdown = """
    - <div>
    - foo
    """
    let target = """
    <ul><li><div></li><li>foo</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample145() {
    let markdown = """
    <style>p{color:red;}</style>
    *foo*
    """
    let target = """
    <style>p{color:red;}</style><p><em>foo</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample146() {
    let markdown = """
    <!-- foo -->*bar*
    *baz*
    """
    let target = """
    <!-- foo -->*bar*
    <p><em>baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample147() {
    let markdown = """
    <script>
    foo
    </script>1. *bar*
    """
    let target = """
    <script>
    foo
    </script>1. *bar*
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample148() {
    let markdown = """
    <!-- Foo
    bar
       baz -->
    okay
    """
    let target = """
    <!-- Foo
    bar
       baz --><p>okay</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample149() {
    let markdown = """
    <?php
      echo '>';
    ?>
    okay
    """
    let target = """
    <?php
      echo '>';
    ?><p>okay</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample150() {
    let markdown = """
    <!DOCTYPE html>
    """
    let target = """
    <!DOCTYPE html>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample151() {
    let markdown = """
    <![CDATA[
    function matchwo(a,b)
    {
      if (a < b && a < 0) then {
        return 1;
      } else {
        return 0;
      }
    }
    ]]>
    okay
    """
    let target = """
    <![CDATA[
    function matchwo(a,b)
    {
      if (a < b && a < 0) then {
        return 1;
      } else {
        return 0;
      }
    }
    ]]><p>okay</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample152() {
    let markdown = """
      <!-- foo -->
        <!-- foo -->
    """
    let target = """
      <!-- foo --><pre><code>&lt;!-- foo --&gt;
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample153() {
    let markdown = """
      <div>
        <div>
    """
    let target = """
      <div><pre><code>&lt;div&gt;
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample154() {
    let markdown = """
    Foo
    <div>
    bar
    </div>
    """
    let target = """
    <p>Foo</p><div>
    bar
    </div>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample155() {
    let markdown = """
    <div>
    bar
    </div>
    *foo*
    """
    let target = """
    <div>
    bar
    </div>
    *foo*
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample156() {
    let markdown = """
    Foo
    <a href=\"bar\">
    baz
    """
    let target = """
    <p>Foo
    <a href=\"bar\">
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample157() {
    let markdown = """
    <div>
    *Emphasized* text.
    </div>
    """
    let target = """
    <div><p><em>Emphasized</em> text.</p></div>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample158() {
    let markdown = """
    <div>
    *Emphasized* text.
    </div>
    """
    let target = """
    <div>
    *Emphasized* text.
    </div>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample159() {
    let markdown = """
    <table>
    <tr>
    <td>
    Hi
    </td>
    </tr>
    </table>
    """
    let target = """
    <table><tr><td>
    Hi
    </td></tr></table>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample160() {
    let markdown = """
    <table>
      <tr>
        <td>
          Hi
        </td>
      </tr>
    </table>
    """
    let target = """
    <table>
      <tr><pre><code>&lt;td&gt;
      Hi
    &lt;/td&gt;
    </code></pre>
      </tr></table>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample161() {
    let markdown = """
    [foo]: /url \"title\"
    [foo]
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample162() {
    let markdown = """
       [foo]: 
          /url  
               'the title'  
    [foo]
    """
    let target = """
    <p><a href=\"/url\" title=\"the title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample163() {
    let markdown = """
    [Foo*bar\\]]:my_(url) 'title (with parens)'
    [Foo*bar\\]]
    """
    let target = """
    <p><a href=\"my_(url)\" title=\"title (with parens)\">Foo*bar]</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample164() {
    let markdown = """
    [Foo bar]:
    <my url>
    'title'
    [Foo bar]
    """
    let target = """
    <p><a href=\"my%20url\" title=\"title\">Foo bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample165() {
    let markdown = """
    [foo]: /url '
    title
    line1
    line2
    '
    [foo]
    """
    let target = """
    <p><a href=\"/url\" title=\"
    title
    line1
    line2
    \">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample166() {
    let markdown = """
    [foo]: /url 'title
    with blank line'
    [foo]
    """
    let target = """
    <p>[foo]: /url 'title</p><p>with blank line'</p><p>[foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample167() {
    let markdown = """
    [foo]:
    /url
    [foo]
    """
    let target = """
    <p><a href=\"/url\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample168() {
    let markdown = """
    [foo]:
    [foo]
    """
    let target = """
    <p>[foo]:</p><p>[foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample169() {
    let markdown = """
    [foo]: <>
    [foo]
    """
    let target = """
    <p><a href=\"\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample170() {
    let markdown = """
    [foo]: <bar>(baz)
    [foo]
    """
    let target = """
    <p>[foo]: <bar>(baz)</p><p>[foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample171() {
    let markdown = """
    [foo]: /url\\bar\\*baz \"foo\\\"bar\\baz\"
    [foo]
    """
    let target = """
    <p><a href=\"/url%5Cbar*baz\" title=\"foo&quot;bar\\baz\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample172() {
    let markdown = """
    [foo]
    [foo]: url
    """
    let target = """
    <p><a href=\"url\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample173() {
    let markdown = """
    [foo]
    [foo]: first
    [foo]: second
    """
    let target = """
    <p><a href=\"first\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample174() {
    let markdown = """
    [FOO]: /url
    [Foo]
    """
    let target = """
    <p><a href=\"/url\">Foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample175() {
    let markdown = """
    [ΑΓΩ]: /φου
    [αγω]
    """
    let target = """
    <p><a href=\"/%CF%86%CE%BF%CF%85\">αγω</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample176() {
    let markdown = """
    [foo]: /url
    """
    let target = """

    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample177() {
    let markdown = """
    [
    foo
    ]: /url
    bar
    """
    let target = """
    <p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample178() {
    let markdown = """
    [foo]: /url \"title\" ok
    """
    let target = """
    <p>[foo]: /url &quot;title&quot; ok</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample179() {
    let markdown = """
    [foo]: /url
    \"title\" ok
    """
    let target = """
    <p>&quot;title&quot; ok</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample180() {
    let markdown = """
        [foo]: /url \"title\"
    [foo]
    """
    let target = """
    <pre><code>[foo]: /url &quot;title&quot;
    </code></pre><p>[foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample181() {
    let markdown = """
    ```
    [foo]: /url
    ```
    [foo]
    """
    let target = """
    <pre><code>[foo]: /url
    </code></pre><p>[foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample182() {
    let markdown = """
    Foo
    [bar]: /baz
    [bar]
    """
    let target = """
    <p>Foo
    [bar]: /baz</p><p>[bar]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample183() {
    let markdown = """
    # [Foo]
    [foo]: /url
    > bar
    """
    let target = """
    <h1><a href=\"/url\">Foo</a></h1><blockquote><p>bar</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample184() {
    let markdown = """
    [foo]: /url
    bar
    ===
    [foo]
    """
    let target = """
    <h1>bar</h1><p><a href=\"/url\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample185() {
    let markdown = """
    [foo]: /url
    ===
    [foo]
    """
    let target = """
    <p>===
    <a href=\"/url\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample186() {
    let markdown = """
    [foo]: /foo-url \"foo\"
    [bar]: /bar-url
      \"bar\"
    [baz]: /baz-url
    [foo],
    [bar],
    [baz]
    """
    let target = """
    <p><a href=\"/foo-url\" title=\"foo\">foo</a>,
    <a href=\"/bar-url\" title=\"bar\">bar</a>,
    <a href=\"/baz-url\">baz</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample187() {
    let markdown = """
    [foo]
    > [foo]: /url
    """
    let target = """
    <p><a href=\"/url\">foo</a></p><blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample188() {
    let markdown = """
    [foo]: /url
    """
    let target = """

    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample189() {
    let markdown = """
    aaa
    bbb
    """
    let target = """
    <p>aaa</p><p>bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample190() {
    let markdown = """
    aaa
    bbb
    ccc
    ddd
    """
    let target = """
    <p>aaa
    bbb</p><p>ccc
    ddd</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample191() {
    let markdown = """
    aaa
    bbb
    """
    let target = """
    <p>aaa</p><p>bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample192() {
    let markdown = """
      aaa
     bbb
    """
    let target = """
    <p>aaa
    bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample193() {
    let markdown = """
    aaa
                 bbb
                                           ccc
    """
    let target = """
    <p>aaa
    bbb
    ccc</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample194() {
    let markdown = """
       aaa
    bbb
    """
    let target = """
    <p>aaa
    bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample195() {
    let markdown = """
        aaa
    bbb
    """
    let target = """
    <pre><code>aaa
    </code></pre><p>bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample196() {
    let markdown = """
    aaa     
    bbb     
    """
    let target = """
    <p>aaa<br />
    bbb</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample197() {
    let markdown = """
      
    aaa
      
    # aaa
      
    """
    let target = """
    <p>aaa</p><h1>aaa</h1>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample198() {
    let markdown = """
    > # Foo
    > bar
    > baz
    """
    let target = """
    <blockquote><h1>Foo</h1><p>bar
    baz</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample199() {
    let markdown = """
    ># Foo
    >bar
    > baz
    """
    let target = """
    <blockquote><h1>Foo</h1><p>bar
    baz</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample200() {
    let markdown = """
       > # Foo
       > bar
     > baz
    """
    let target = """
    <blockquote><h1>Foo</h1><p>bar
    baz</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample201() {
    let markdown = """
        > # Foo
        > bar
        > baz
    """
    let target = """
    <pre><code>&gt; # Foo
    &gt; bar
    &gt; baz
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample202() {
    let markdown = """
    > # Foo
    > bar
    baz
    """
    let target = """
    <blockquote><h1>Foo</h1><p>bar
    baz</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample203() {
    let markdown = """
    > bar
    baz
    > foo
    """
    let target = """
    <blockquote><p>bar
    baz
    foo</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample204() {
    let markdown = """
    > foo
    ---
    """
    let target = """
    <blockquote><p>foo</p></blockquote><hr />
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample205() {
    let markdown = """
    > - foo
    - bar
    """
    let target = """
    <blockquote><ul><li>foo</li></ul></blockquote><ul><li>bar</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample206() {
    let markdown = """
    >     foo
        bar
    """
    let target = """
    <blockquote><pre><code>foo
    </code></pre></blockquote><pre><code>bar
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample207() {
    let markdown = """
    > ```
    foo
    ```
    """
    let target = """
    <blockquote><pre><code></code></pre></blockquote><p>foo</p><pre><code></code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample208() {
    let markdown = """
    > foo
        - bar
    """
    let target = """
    <blockquote><p>foo
    - bar</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample209() {
    let markdown = """
    >
    """
    let target = """
    <blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample210() {
    let markdown = """
    >
    >  
    > 
    """
    let target = """
    <blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample211() {
    let markdown = """
    >
    > foo
    >  
    """
    let target = """
    <blockquote><p>foo</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample212() {
    let markdown = """
    > foo
    > bar
    """
    let target = """
    <blockquote><p>foo</p></blockquote><blockquote><p>bar</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample213() {
    let markdown = """
    > foo
    > bar
    """
    let target = """
    <blockquote><p>foo
    bar</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample214() {
    let markdown = """
    > foo
    >
    > bar
    """
    let target = """
    <blockquote><p>foo</p><p>bar</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample215() {
    let markdown = """
    foo
    > bar
    """
    let target = """
    <p>foo</p><blockquote><p>bar</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample216() {
    let markdown = """
    > aaa
    ***
    > bbb
    """
    let target = """
    <blockquote><p>aaa</p></blockquote><hr /><blockquote><p>bbb</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample217() {
    let markdown = """
    > bar
    baz
    """
    let target = """
    <blockquote><p>bar
    baz</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample218() {
    let markdown = """
    > bar
    baz
    """
    let target = """
    <blockquote><p>bar</p></blockquote><p>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample219() {
    let markdown = """
    > bar
    >
    baz
    """
    let target = """
    <blockquote><p>bar</p></blockquote><p>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample220() {
    let markdown = """
    > > > foo
    bar
    """
    let target = """
    <blockquote><blockquote><blockquote><p>foo
    bar</p></blockquote></blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample221() {
    let markdown = """
    >>> foo
    > bar
    >>baz
    """
    let target = """
    <blockquote><blockquote><blockquote><p>foo
    bar
    baz</p></blockquote></blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample222() {
    let markdown = """
    >     code
    >    not code
    """
    let target = """
    <blockquote><pre><code>code
    </code></pre></blockquote><blockquote><p>not code</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample223() {
    let markdown = """
    A paragraph
    with two lines.
        indented code
    > A block quote.
    """
    let target = """
    <p>A paragraph
    with two lines.</p><pre><code>indented code
    </code></pre><blockquote><p>A block quote.</p></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample224() {
    let markdown = """
    1.  A paragraph
        with two lines.
            indented code
        > A block quote.
    """
    let target = """
    <ol><li><p>A paragraph
    with two lines.</p><pre><code>indented code
    </code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample225() {
    let markdown = """
    - one
     two
    """
    let target = """
    <ul><li>one</li></ul><p>two</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample226() {
    let markdown = """
    - one
      two
    """
    let target = """
    <ul><li><p>one</p><p>two</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample227() {
    let markdown = """
     -    one
         two
    """
    let target = """
    <ul><li>one</li></ul><pre><code> two
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample228() {
    let markdown = """
     -    one
          two
    """
    let target = """
    <ul><li><p>one</p><p>two</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample229() {
    let markdown = """
       > > 1.  one
    >>
    >>     two
    """
    let target = """
    <blockquote><blockquote><ol><li><p>one</p><p>two</p></li></ol></blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample230() {
    let markdown = """
    >>- one
    >>
      >  > two
    """
    let target = """
    <blockquote><blockquote><ul><li>one</li></ul><p>two</p></blockquote></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample231() {
    let markdown = """
    -one
    2.two
    """
    let target = """
    <p>-one</p><p>2.two</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample232() {
    let markdown = """
    - foo
      bar
    """
    let target = """
    <ul><li><p>foo</p><p>bar</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample233() {
    let markdown = """
    1.  foo
        ```
        bar
        ```
        baz
        > bam
    """
    let target = """
    <ol><li><p>foo</p><pre><code>bar
    </code></pre><p>baz</p><blockquote><p>bam</p></blockquote></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample234() {
    let markdown = """
    - Foo
          bar
          baz
    """
    let target = """
    <ul><li><p>Foo</p><pre><code>bar
    baz
    </code></pre></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample235() {
    let markdown = """
    123456789. ok
    """
    let target = """
    <ol start=\"123456789\"><li>ok</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample236() {
    let markdown = """
    1234567890. not ok
    """
    let target = """
    <p>1234567890. not ok</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample237() {
    let markdown = """
    0. ok
    """
    let target = """
    <ol start=\"0\"><li>ok</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample238() {
    let markdown = """
    003. ok
    """
    let target = """
    <ol start=\"3\"><li>ok</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample239() {
    let markdown = """
    -1. not ok
    """
    let target = """
    <p>-1. not ok</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample240() {
    let markdown = """
    - foo
          bar
    """
    let target = """
    <ul><li><p>foo</p><pre><code>bar
    </code></pre></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample241() {
    let markdown = """
      10.  foo
               bar
    """
    let target = """
    <ol start=\"10\"><li><p>foo</p><pre><code>bar
    </code></pre></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample242() {
    let markdown = """
        indented code
    paragraph
        more code
    """
    let target = """
    <pre><code>indented code
    </code></pre><p>paragraph</p><pre><code>more code
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample243() {
    let markdown = """
    1.     indented code
       paragraph
           more code
    """
    let target = """
    <ol><li><pre><code>indented code
    </code></pre><p>paragraph</p><pre><code>more code
    </code></pre></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample244() {
    let markdown = """
    1.      indented code
       paragraph
           more code
    """
    let target = """
    <ol><li><pre><code> indented code
    </code></pre><p>paragraph</p><pre><code>more code
    </code></pre></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample245() {
    let markdown = """
       foo
    bar
    """
    let target = """
    <p>foo</p><p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample246() {
    let markdown = """
    -    foo
      bar
    """
    let target = """
    <ul><li>foo</li></ul><p>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample247() {
    let markdown = """
    -  foo
       bar
    """
    let target = """
    <ul><li><p>foo</p><p>bar</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample248() {
    let markdown = """
    -
      foo
    -
      ```
      bar
      ```
    -
          baz
    """
    let target = """
    <ul><li>foo</li><li><pre><code>bar
    </code></pre></li><li><pre><code>baz
    </code></pre></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample249() {
    let markdown = """
    -   
      foo
    """
    let target = """
    <ul><li>foo</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample250() {
    let markdown = """
    -
      foo
    """
    let target = """
    <ul><li></li></ul><p>foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample251() {
    let markdown = """
    - foo
    -
    - bar
    """
    let target = """
    <ul><li>foo</li><li></li><li>bar</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample252() {
    let markdown = """
    - foo
    -   
    - bar
    """
    let target = """
    <ul><li>foo</li><li></li><li>bar</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample253() {
    let markdown = """
    1. foo
    2.
    3. bar
    """
    let target = """
    <ol><li>foo</li><li></li><li>bar</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample254() {
    let markdown = """
    *
    """
    let target = """
    <ul><li></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample255() {
    let markdown = """
    foo
    *
    foo
    1.
    """
    let target = """
    <p>foo
    *</p><p>foo
    1.</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample256() {
    let markdown = """
     1.  A paragraph
         with two lines.
             indented code
         > A block quote.
    """
    let target = """
    <ol><li><p>A paragraph
    with two lines.</p><pre><code>indented code
    </code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample257() {
    let markdown = """
      1.  A paragraph
          with two lines.
              indented code
          > A block quote.
    """
    let target = """
    <ol><li><p>A paragraph
    with two lines.</p><pre><code>indented code
    </code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample258() {
    let markdown = """
       1.  A paragraph
           with two lines.
               indented code
           > A block quote.
    """
    let target = """
    <ol><li><p>A paragraph
    with two lines.</p><pre><code>indented code
    </code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample259() {
    let markdown = """
        1.  A paragraph
            with two lines.
                indented code
            > A block quote.
    """
    let target = """
    <pre><code>1.  A paragraph
        with two lines.
            indented code
        &gt; A block quote.
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample260() {
    let markdown = """
      1.  A paragraph
    with two lines.
              indented code
          > A block quote.
    """
    let target = """
    <ol><li><p>A paragraph
    with two lines.</p><pre><code>indented code
    </code></pre><blockquote><p>A block quote.</p></blockquote></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample261() {
    let markdown = """
      1.  A paragraph
        with two lines.
    """
    let target = """
    <ol><li>A paragraph
    with two lines.</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample262() {
    let markdown = """
    > 1. > Blockquote
    continued here.
    """
    let target = """
    <blockquote><ol><li><blockquote><p>Blockquote
    continued here.</p></blockquote></li></ol></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample263() {
    let markdown = """
    > 1. > Blockquote
    > continued here.
    """
    let target = """
    <blockquote><ol><li><blockquote><p>Blockquote
    continued here.</p></blockquote></li></ol></blockquote>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample264() {
    let markdown = """
    - foo
      - bar
        - baz
          - boo
    """
    let target = """
    <ul><li>foo
    <ul><li>bar
    <ul><li>baz
    <ul><li>boo</li></ul></li></ul></li></ul></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample265() {
    let markdown = """
    - foo
     - bar
      - baz
       - boo
    """
    let target = """
    <ul><li>foo</li><li>bar</li><li>baz</li><li>boo</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample266() {
    let markdown = """
    10) foo
        - bar
    """
    let target = """
    <ol start=\"10\"><li>foo
    <ul><li>bar</li></ul></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample267() {
    let markdown = """
    10) foo
       - bar
    """
    let target = """
    <ol start=\"10\"><li>foo</li></ol><ul><li>bar</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample268() {
    let markdown = """
    - - foo
    """
    let target = """
    <ul><li><ul><li>foo</li></ul></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample269() {
    let markdown = """
    1. - 2. foo
    """
    let target = """
    <ol><li><ul><li><ol start=\"2\"><li>foo</li></ol></li></ul></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample270() {
    let markdown = """
    - # Foo
    - Bar
      ---
      baz
    """
    let target = """
    <ul><li><h1>Foo</h1></li><li><h2>Bar</h2>
    baz</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample271() {
    let markdown = """
    - foo
    - bar
    + baz
    """
    let target = """
    <ul><li>foo</li><li>bar</li></ul><ul><li>baz</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample272() {
    let markdown = """
    1. foo
    2. bar
    3) baz
    """
    let target = """
    <ol><li>foo</li><li>bar</li></ol><ol start=\"3\"><li>baz</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample273() {
    let markdown = """
    Foo
    - bar
    - baz
    """
    let target = """
    <p>Foo</p><ul><li>bar</li><li>baz</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample274() {
    let markdown = """
    The number of windows in my house is
    14.  The number of doors is 6.
    """
    let target = """
    <p>The number of windows in my house is
    14.  The number of doors is 6.</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample275() {
    let markdown = """
    The number of windows in my house is
    1.  The number of doors is 6.
    """
    let target = """
    <p>The number of windows in my house is</p><ol><li>The number of doors is 6.</li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample276() {
    let markdown = """
    - foo
    - bar
    - baz
    """
    let target = """
    <ul><li><p>foo</p></li><li><p>bar</p></li><li><p>baz</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample277() {
    let markdown = """
    - foo
      - bar
        - baz
          bim
    """
    let target = """
    <ul><li>foo
    <ul><li>bar
    <ul><li><p>baz</p><p>bim</p></li></ul></li></ul></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample278() {
    let markdown = """
    - foo
    - bar
    <!-- -->
    - baz
    - bim
    """
    let target = """
    <ul><li>foo</li><li>bar</li></ul><!-- --><ul><li>baz</li><li>bim</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample279() {
    let markdown = """
    -   foo
        notcode
    -   foo
    <!-- -->
        code
    """
    let target = """
    <ul><li><p>foo</p><p>notcode</p></li><li><p>foo</p></li></ul><!-- --><pre><code>code
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample280() {
    let markdown = """
    - a
     - b
      - c
       - d
      - e
     - f
    - g
    """
    let target = """
    <ul><li>a</li><li>b</li><li>c</li><li>d</li><li>e</li><li>f</li><li>g</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample281() {
    let markdown = """
    1. a
      2. b
       3. c
    """
    let target = """
    <ol><li><p>a</p></li><li><p>b</p></li><li><p>c</p></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample282() {
    let markdown = """
    - a
     - b
      - c
       - d
        - e
    """
    let target = """
    <ul><li>a</li><li>b</li><li>c</li><li>d
    - e</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample283() {
    let markdown = """
    1. a
      2. b
        3. c
    """
    let target = """
    <ol><li><p>a</p></li><li><p>b</p></li></ol><pre><code>3. c
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample284() {
    let markdown = """
    - a
    - b
    - c
    """
    let target = """
    <ul><li><p>a</p></li><li><p>b</p></li><li><p>c</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample285() {
    let markdown = """
    * a
    *
    * c
    """
    let target = """
    <ul><li><p>a</p></li><li></li><li><p>c</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample286() {
    let markdown = """
    - a
    - b
      c
    - d
    """
    let target = """
    <ul><li><p>a</p></li><li><p>b</p><p>c</p></li><li><p>d</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample287() {
    let markdown = """
    - a
    - b
      [ref]: /url
    - d
    """
    let target = """
    <ul><li><p>a</p></li><li><p>b</p></li><li><p>d</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample288() {
    let markdown = """
    - a
    - ```
      b
      ```
    - c
    """
    let target = """
    <ul><li>a</li><li><pre><code>b
    </code></pre></li><li>c</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample289() {
    let markdown = """
    - a
      - b
        c
    - d
    """
    let target = """
    <ul><li>a
    <ul><li><p>b</p><p>c</p></li></ul></li><li>d</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample290() {
    let markdown = """
    * a
      > b
      >
    * c
    """
    let target = """
    <ul><li>a
    <blockquote><p>b</p></blockquote></li><li>c</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample291() {
    let markdown = """
    - a
      > b
      ```
      c
      ```
    - d
    """
    let target = """
    <ul><li>a
    <blockquote><p>b</p></blockquote><pre><code>c
    </code></pre></li><li>d</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample292() {
    let markdown = """
    - a
    """
    let target = """
    <ul><li>a</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample293() {
    let markdown = """
    - a
      - b
    """
    let target = """
    <ul><li>a
    <ul><li>b</li></ul></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample294() {
    let markdown = """
    1. ```
       foo
       ```
       bar
    """
    let target = """
    <ol><li><pre><code>foo
    </code></pre><p>bar</p></li></ol>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample295() {
    let markdown = """
    * foo
      * bar
      baz
    """
    let target = """
    <ul><li><p>foo</p><ul><li>bar</li></ul><p>baz</p></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample296() {
    let markdown = """
    - a
      - b
      - c
    - d
      - e
      - f
    """
    let target = """
    <ul><li><p>a</p><ul><li>b</li><li>c</li></ul></li><li><p>d</p><ul><li>e</li><li>f</li></ul></li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample297() {
    let markdown = """
    `hi`lo`
    """
    let target = """
    <p><code>hi</code>lo`</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample298() {
    let markdown = """
    \\!\\\"\\#\\$\\%\\&\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\`\\{\\|\\}\\~
    """
    let target = """
    <p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample299() {
    let markdown = """
    \\  \\A\\a\\ \\3\\φ\\«
    """
    let target = """
    <p>\\   \\A\\a\\ \\3\\φ\\«</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample300() {
    let markdown = """
    \\*not emphasized*
    \\<br/> not a tag
    \\[not a link](/foo)
    \\`not code`
    1\\. not a list
    \\* not a list
    \\# not a heading
    \\[foo]: /url \"not a reference\"
    \\&ouml; not a character entity
    """
    let target = """
    <p>*not emphasized*
    &lt;br/&gt; not a tag
    [not a link](/foo)
    `not code`
    1. not a list
    * not a list
    # not a heading
    [foo]: /url &quot;not a reference&quot;
    &amp;ouml; not a character entity</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample301() {
    let markdown = """
    \\\\*emphasis*
    """
    let target = """
    <p>\\<em>emphasis</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample302() {
    let markdown = """
    foo\\
    bar
    """
    let target = """
    <p>foo<br />
    bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample303() {
    let markdown = """
    `` \\[\\` ``
    """
    let target = """
    <p><code>\\[\\`</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample304() {
    let markdown = """
        \\[\\]
    """
    let target = """
    <pre><code>\\[\\]
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample305() {
    let markdown = """
    ~~~
    \\[\\]
    ~~~
    """
    let target = """
    <pre><code>\\[\\]
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample306() {
    let markdown = """
    <http://example.com?find=\\*>
    """
    let target = """
    <p><a href=\"http://example.com?find=%5C*\">http://example.com?find=\\*</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample307() {
    let markdown = """
    <a href=\"/bar\\/)\">
    """
    let target = """
    <a href=\"/bar\\/)\">
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample308() {
    let markdown = """
    [foo](/bar\\* \"ti\\*tle\")
    """
    let target = """
    <p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample309() {
    let markdown = """
    [foo]
    [foo]: /bar\\* \"ti\\*tle\"
    """
    let target = """
    <p><a href=\"/bar*\" title=\"ti*tle\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample310() {
    let markdown = """
    ``` foo\\+bar
    foo
    ```
    """
    let target = """
    <pre><code class=\"language-foo+bar\">foo
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample311() {
    let markdown = """
    &nbsp; &amp; &copy; &AElig; &Dcaron;
    &frac34; &HilbertSpace; &DifferentialD;
    &ClockwiseContourIntegral; &ngE;
    """
    let target = """
    <p>  &amp; © Æ Ď
    ¾ ℋ ⅆ
    ∲ ≧̸</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample312() {
    let markdown = """
    &#35; &#1234; &#992; &#0;
    """
    let target = """
    <p># Ӓ Ϡ �</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample313() {
    let markdown = """
    &#X22; &#XD06; &#xcab;
    """
    let target = """
    <p>&quot; ആ ಫ</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample314() {
    let markdown = """
    &nbsp &x; &#; &#x;
    &#987654321;
    &#abcdef0;
    &ThisIsNotDefined; &hi?;
    """
    let target = """
    <p>&amp;nbsp &amp;x; &amp;#; &amp;#x;
    &amp;#987654321;
    &amp;#abcdef0;
    &amp;ThisIsNotDefined; &amp;hi?;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample315() {
    let markdown = """
    &copy
    """
    let target = """
    <p>&amp;copy</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample316() {
    let markdown = """
    &MadeUpEntity;
    """
    let target = """
    <p>&amp;MadeUpEntity;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample317() {
    let markdown = """
    <a href=\"&ouml;&ouml;.html\">
    """
    let target = """
    <a href=\"&ouml;&ouml;.html\">
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample318() {
    let markdown = """
    [foo](/f&ouml;&ouml; \"f&ouml;&ouml;\")
    """
    let target = """
    <p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample319() {
    let markdown = """
    [foo]
    [foo]: /f&ouml;&ouml; \"f&ouml;&ouml;\"
    """
    let target = """
    <p><a href=\"/f%C3%B6%C3%B6\" title=\"föö\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample320() {
    let markdown = """
    ``` f&ouml;&ouml;
    foo
    ```
    """
    let target = """
    <pre><code class=\"language-föö\">foo
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample321() {
    let markdown = """
    `f&ouml;&ouml;`
    """
    let target = """
    <p><code>f&amp;ouml;&amp;ouml;</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample322() {
    let markdown = """
        f&ouml;f&ouml;
    """
    let target = """
    <pre><code>f&amp;ouml;f&amp;ouml;
    </code></pre>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample323() {
    let markdown = """
    &#42;foo&#42;
    *foo*
    """
    let target = """
    <p>*foo*
    <em>foo</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample324() {
    let markdown = """
    &#42; foo
    * foo
    """
    let target = """
    <p>* foo</p><ul><li>foo</li></ul>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample325() {
    let markdown = """
    foo&#10;&#10;bar
    """
    let target = """
    <p>foo
    bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample326() {
    let markdown = """
    &#9;foo
    """
    let target = """
    <p> foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample327() {
    let markdown = """
    [a](url &quot;tit&quot;)
    """
    let target = """
    <p>[a](url &quot;tit&quot;)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample328() {
    let markdown = """
    `foo`
    """
    let target = """
    <p><code>foo</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample329() {
    let markdown = """
    `` foo ` bar ``
    """
    let target = """
    <p><code>foo ` bar</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample330() {
    let markdown = """
    ` `` `
    """
    let target = """
    <p><code>``</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample331() {
    let markdown = """
    `  ``  `
    """
    let target = """
    <p><code> `` </code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample332() {
    let markdown = """
    ` a`
    """
    let target = """
    <p><code> a</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample333() {
    let markdown = """
    ` b `
    """
    let target = """
    <p><code> b </code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample334() {
    let markdown = """
    ` `
    `  `
    """
    let target = """
    <p><code> </code><code>  </code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample335() {
    let markdown = """
    ``
    foo
    bar  
    baz
    ``
    """
    let target = """
    <p><code>foo bar   baz</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample336() {
    let markdown = """
    ``
    foo 
    ``
    """
    let target = """
    <p><code>foo </code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample337() {
    let markdown = """
    `foo   bar 
    baz`
    """
    let target = """
    <p><code>foo   bar  baz</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample338() {
    let markdown = """
    `foo\\`bar`
    """
    let target = """
    <p><code>foo\\</code>bar`</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample339() {
    let markdown = """
    ``foo`bar``
    """
    let target = """
    <p><code>foo`bar</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample340() {
    let markdown = """
    ` foo `` bar `
    """
    let target = """
    <p><code>foo `` bar</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample341() {
    let markdown = """
    *foo`*`
    """
    let target = """
    <p>*foo<code>*</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample342() {
    let markdown = """
    [not a `link](/foo`)
    """
    let target = """
    <p>[not a <code>link](/foo</code>)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample343() {
    let markdown = """
    `<a href=\"`\">`
    """
    let target = """
    <p><code>&lt;a href=&quot;</code>&quot;&gt;`</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample344() {
    let markdown = """
    <a href=\"`\">`
    """
    let target = """
    <p><a href=\"`\">`</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample345() {
    let markdown = """
    `<http://foo.bar.`baz>`
    """
    let target = """
    <p><code>&lt;http://foo.bar.</code>baz&gt;`</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample346() {
    let markdown = """
    <http://foo.bar.`baz>`
    """
    let target = """
    <p><a href=\"http://foo.bar.%60baz\">http://foo.bar.`baz</a>`</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample347() {
    let markdown = """
    ```foo``
    """
    let target = """
    <p>```foo``</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample348() {
    let markdown = """
    `foo
    """
    let target = """
    <p>`foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample349() {
    let markdown = """
    `foo``bar``
    """
    let target = """
    <p>`foo<code>bar</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample350() {
    let markdown = """
    *foo bar*
    """
    let target = """
    <p><em>foo bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample351() {
    let markdown = """
    a * foo bar*
    """
    let target = """
    <p>a * foo bar*</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample352() {
    let markdown = """
    a*\"foo\"*
    """
    let target = """
    <p>a*&quot;foo&quot;*</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample353() {
    let markdown = """
    * a *
    """
    let target = """
    <p>* a *</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample354() {
    let markdown = """
    foo*bar*
    """
    let target = """
    <p>foo<em>bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample355() {
    let markdown = """
    5*6*78
    """
    let target = """
    <p>5<em>6</em>78</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample356() {
    let markdown = """
    _foo bar_
    """
    let target = """
    <p><em>foo bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample357() {
    let markdown = """
    _ foo bar_
    """
    let target = """
    <p>_ foo bar_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample358() {
    let markdown = """
    a_\"foo\"_
    """
    let target = """
    <p>a_&quot;foo&quot;_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample359() {
    let markdown = """
    foo_bar_
    """
    let target = """
    <p>foo_bar_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample360() {
    let markdown = """
    5_6_78
    """
    let target = """
    <p>5_6_78</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample361() {
    let markdown = """
    пристаням_стремятся_
    """
    let target = """
    <p>пристаням_стремятся_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample362() {
    let markdown = """
    aa_\"bb\"_cc
    """
    let target = """
    <p>aa_&quot;bb&quot;_cc</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample363() {
    let markdown = """
    foo-_(bar)_
    """
    let target = """
    <p>foo-<em>(bar)</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample364() {
    let markdown = """
    _foo*
    """
    let target = """
    <p>_foo*</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample365() {
    let markdown = """
    *foo bar *
    """
    let target = """
    <p>*foo bar *</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample366() {
    let markdown = """
    *foo bar
    *
    """
    let target = """
    <p>*foo bar
    *</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample367() {
    let markdown = """
    *(*foo)
    """
    let target = """
    <p>*(*foo)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample368() {
    let markdown = """
    *(*foo*)*
    """
    let target = """
    <p><em>(<em>foo</em>)</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample369() {
    let markdown = """
    *foo*bar
    """
    let target = """
    <p><em>foo</em>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample370() {
    let markdown = """
    _foo bar _
    """
    let target = """
    <p>_foo bar _</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample371() {
    let markdown = """
    _(_foo)
    """
    let target = """
    <p>_(_foo)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample372() {
    let markdown = """
    _(_foo_)_
    """
    let target = """
    <p><em>(<em>foo</em>)</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample373() {
    let markdown = """
    _foo_bar
    """
    let target = """
    <p>_foo_bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample374() {
    let markdown = """
    _пристаням_стремятся
    """
    let target = """
    <p>_пристаням_стремятся</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample375() {
    let markdown = """
    _foo_bar_baz_
    """
    let target = """
    <p><em>foo_bar_baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample376() {
    let markdown = """
    _(bar)_.
    """
    let target = """
    <p><em>(bar)</em>.</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample377() {
    let markdown = """
    **foo bar**
    """
    let target = """
    <p><strong>foo bar</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample378() {
    let markdown = """
    ** foo bar**
    """
    let target = """
    <p>** foo bar**</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample379() {
    let markdown = """
    a**\"foo\"**
    """
    let target = """
    <p>a**&quot;foo&quot;**</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample380() {
    let markdown = """
    foo**bar**
    """
    let target = """
    <p>foo<strong>bar</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample381() {
    let markdown = """
    __foo bar__
    """
    let target = """
    <p><strong>foo bar</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample382() {
    let markdown = """
    __ foo bar__
    """
    let target = """
    <p>__ foo bar__</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample383() {
    let markdown = """
    __
    foo bar__
    """
    let target = """
    <p>__
    foo bar__</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample384() {
    let markdown = """
    a__\"foo\"__
    """
    let target = """
    <p>a__&quot;foo&quot;__</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample385() {
    let markdown = """
    foo__bar__
    """
    let target = """
    <p>foo__bar__</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample386() {
    let markdown = """
    5__6__78
    """
    let target = """
    <p>5__6__78</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample387() {
    let markdown = """
    пристаням__стремятся__
    """
    let target = """
    <p>пристаням__стремятся__</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample388() {
    let markdown = """
    __foo, __bar__, baz__
    """
    let target = """
    <p><strong>foo, <strong>bar</strong>, baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample389() {
    let markdown = """
    foo-__(bar)__
    """
    let target = """
    <p>foo-<strong>(bar)</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample390() {
    let markdown = """
    **foo bar **
    """
    let target = """
    <p>**foo bar **</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample391() {
    let markdown = """
    **(**foo)
    """
    let target = """
    <p>**(**foo)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample392() {
    let markdown = """
    *(**foo**)*
    """
    let target = """
    <p><em>(<strong>foo</strong>)</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample393() {
    let markdown = """
    **Gomphocarpus (*Gomphocarpus physocarpus*, syn.
    *Asclepias physocarpa*)**
    """
    let target = """
    <p><strong>Gomphocarpus (<em>Gomphocarpus physocarpus</em>, syn.
    <em>Asclepias physocarpa</em>)</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample394() {
    let markdown = """
    **foo \"*bar*\" foo**
    """
    let target = """
    <p><strong>foo &quot;<em>bar</em>&quot; foo</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample395() {
    let markdown = """
    **foo**bar
    """
    let target = """
    <p><strong>foo</strong>bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample396() {
    let markdown = """
    __foo bar __
    """
    let target = """
    <p>__foo bar __</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample397() {
    let markdown = """
    __(__foo)
    """
    let target = """
    <p>__(__foo)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample398() {
    let markdown = """
    _(__foo__)_
    """
    let target = """
    <p><em>(<strong>foo</strong>)</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample399() {
    let markdown = """
    __foo__bar
    """
    let target = """
    <p>__foo__bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample400() {
    let markdown = """
    __пристаням__стремятся
    """
    let target = """
    <p>__пристаням__стремятся</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample401() {
    let markdown = """
    __foo__bar__baz__
    """
    let target = """
    <p><strong>foo__bar__baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample402() {
    let markdown = """
    __(bar)__.
    """
    let target = """
    <p><strong>(bar)</strong>.</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample403() {
    let markdown = """
    *foo [bar](/url)*
    """
    let target = """
    <p><em>foo <a href=\"/url\">bar</a></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample404() {
    let markdown = """
    *foo
    bar*
    """
    let target = """
    <p><em>foo
    bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample405() {
    let markdown = """
    _foo __bar__ baz_
    """
    let target = """
    <p><em>foo <strong>bar</strong> baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample406() {
    let markdown = """
    _foo _bar_ baz_
    """
    let target = """
    <p><em>foo <em>bar</em> baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample407() {
    let markdown = """
    __foo_ bar_
    """
    let target = """
    <p><em><em>foo</em> bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample408() {
    let markdown = """
    *foo *bar**
    """
    let target = """
    <p><em>foo <em>bar</em></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample409() {
    let markdown = """
    *foo **bar** baz*
    """
    let target = """
    <p><em>foo <strong>bar</strong> baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample410() {
    let markdown = """
    *foo**bar**baz*
    """
    let target = """
    <p><em>foo<strong>bar</strong>baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample411() {
    let markdown = """
    *foo**bar*
    """
    let target = """
    <p><em>foo**bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample412() {
    let markdown = """
    ***foo** bar*
    """
    let target = """
    <p><em><strong>foo</strong> bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample413() {
    let markdown = """
    *foo **bar***
    """
    let target = """
    <p><em>foo <strong>bar</strong></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample414() {
    let markdown = """
    *foo**bar***
    """
    let target = """
    <p><em>foo<strong>bar</strong></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample415() {
    let markdown = """
    foo***bar***baz
    """
    let target = """
    <p>foo<em><strong>bar</strong></em>baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample416() {
    let markdown = """
    foo******bar*********baz
    """
    let target = """
    <p>foo<strong><strong><strong>bar</strong></strong></strong>***baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample417() {
    let markdown = """
    *foo **bar *baz* bim** bop*
    """
    let target = """
    <p><em>foo <strong>bar <em>baz</em> bim</strong> bop</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample418() {
    let markdown = """
    *foo [*bar*](/url)*
    """
    let target = """
    <p><em>foo <a href=\"/url\"><em>bar</em></a></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample419() {
    let markdown = """
    ** is not an empty emphasis
    """
    let target = """
    <p>** is not an empty emphasis</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample420() {
    let markdown = """
    **** is not an empty strong emphasis
    """
    let target = """
    <p>**** is not an empty strong emphasis</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample421() {
    let markdown = """
    **foo [bar](/url)**
    """
    let target = """
    <p><strong>foo <a href=\"/url\">bar</a></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample422() {
    let markdown = """
    **foo
    bar**
    """
    let target = """
    <p><strong>foo
    bar</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample423() {
    let markdown = """
    __foo _bar_ baz__
    """
    let target = """
    <p><strong>foo <em>bar</em> baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample424() {
    let markdown = """
    __foo __bar__ baz__
    """
    let target = """
    <p><strong>foo <strong>bar</strong> baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample425() {
    let markdown = """
    ____foo__ bar__
    """
    let target = """
    <p><strong><strong>foo</strong> bar</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample426() {
    let markdown = """
    **foo **bar****
    """
    let target = """
    <p><strong>foo <strong>bar</strong></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample427() {
    let markdown = """
    **foo *bar* baz**
    """
    let target = """
    <p><strong>foo <em>bar</em> baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample428() {
    let markdown = """
    **foo*bar*baz**
    """
    let target = """
    <p><strong>foo<em>bar</em>baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample429() {
    let markdown = """
    ***foo* bar**
    """
    let target = """
    <p><strong><em>foo</em> bar</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample430() {
    let markdown = """
    **foo *bar***
    """
    let target = """
    <p><strong>foo <em>bar</em></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample431() {
    let markdown = """
    **foo *bar **baz**
    bim* bop**
    """
    let target = """
    <p><strong>foo <em>bar <strong>baz</strong>
    bim</em> bop</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample432() {
    let markdown = """
    **foo [*bar*](/url)**
    """
    let target = """
    <p><strong>foo <a href=\"/url\"><em>bar</em></a></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample433() {
    let markdown = """
    __ is not an empty emphasis
    """
    let target = """
    <p>__ is not an empty emphasis</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample434() {
    let markdown = """
    ____ is not an empty strong emphasis
    """
    let target = """
    <p>____ is not an empty strong emphasis</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample435() {
    let markdown = """
    foo ***
    """
    let target = """
    <p>foo ***</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample436() {
    let markdown = """
    foo *\\**
    """
    let target = """
    <p>foo <em>*</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample437() {
    let markdown = """
    foo *_*
    """
    let target = """
    <p>foo <em>_</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample438() {
    let markdown = """
    foo *****
    """
    let target = """
    <p>foo *****</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample439() {
    let markdown = """
    foo **\\***
    """
    let target = """
    <p>foo <strong>*</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample440() {
    let markdown = """
    foo **_**
    """
    let target = """
    <p>foo <strong>_</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample441() {
    let markdown = """
    **foo*
    """
    let target = """
    <p>*<em>foo</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample442() {
    let markdown = """
    *foo**
    """
    let target = """
    <p><em>foo</em>*</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample443() {
    let markdown = """
    ***foo**
    """
    let target = """
    <p>*<strong>foo</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample444() {
    let markdown = """
    ****foo*
    """
    let target = """
    <p>***<em>foo</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample445() {
    let markdown = """
    **foo***
    """
    let target = """
    <p><strong>foo</strong>*</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample446() {
    let markdown = """
    *foo****
    """
    let target = """
    <p><em>foo</em>***</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample447() {
    let markdown = """
    foo ___
    """
    let target = """
    <p>foo ___</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample448() {
    let markdown = """
    foo _\\__
    """
    let target = """
    <p>foo <em>_</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample449() {
    let markdown = """
    foo _*_
    """
    let target = """
    <p>foo <em>*</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample450() {
    let markdown = """
    foo _____
    """
    let target = """
    <p>foo _____</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample451() {
    let markdown = """
    foo __\\___
    """
    let target = """
    <p>foo <strong>_</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample452() {
    let markdown = """
    foo __*__
    """
    let target = """
    <p>foo <strong>*</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample453() {
    let markdown = """
    __foo_
    """
    let target = """
    <p>_<em>foo</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample454() {
    let markdown = """
    _foo__
    """
    let target = """
    <p><em>foo</em>_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample455() {
    let markdown = """
    ___foo__
    """
    let target = """
    <p>_<strong>foo</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample456() {
    let markdown = """
    ____foo_
    """
    let target = """
    <p>___<em>foo</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample457() {
    let markdown = """
    __foo___
    """
    let target = """
    <p><strong>foo</strong>_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample458() {
    let markdown = """
    _foo____
    """
    let target = """
    <p><em>foo</em>___</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample459() {
    let markdown = """
    **foo**
    """
    let target = """
    <p><strong>foo</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample460() {
    let markdown = """
    *_foo_*
    """
    let target = """
    <p><em><em>foo</em></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample461() {
    let markdown = """
    __foo__
    """
    let target = """
    <p><strong>foo</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample462() {
    let markdown = """
    _*foo*_
    """
    let target = """
    <p><em><em>foo</em></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample463() {
    let markdown = """
    ****foo****
    """
    let target = """
    <p><strong><strong>foo</strong></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample464() {
    let markdown = """
    ____foo____
    """
    let target = """
    <p><strong><strong>foo</strong></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample465() {
    let markdown = """
    ******foo******
    """
    let target = """
    <p><strong><strong><strong>foo</strong></strong></strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample466() {
    let markdown = """
    ***foo***
    """
    let target = """
    <p><em><strong>foo</strong></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample467() {
    let markdown = """
    _____foo_____
    """
    let target = """
    <p><em><strong><strong>foo</strong></strong></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample468() {
    let markdown = """
    *foo _bar* baz_
    """
    let target = """
    <p><em>foo _bar</em> baz_</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample469() {
    let markdown = """
    *foo __bar *baz bim__ bam*
    """
    let target = """
    <p><em>foo <strong>bar *baz bim</strong> bam</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample470() {
    let markdown = """
    **foo **bar baz**
    """
    let target = """
    <p>**foo <strong>bar baz</strong></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample471() {
    let markdown = """
    *foo *bar baz*
    """
    let target = """
    <p>*foo <em>bar baz</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample472() {
    let markdown = """
    *[bar*](/url)
    """
    let target = """
    <p>*<a href=\"/url\">bar*</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample473() {
    let markdown = """
    _foo [bar_](/url)
    """
    let target = """
    <p>_foo <a href=\"/url\">bar_</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample474() {
    let markdown = """
    *<img src=\"foo\" title=\"*\"/>
    """
    let target = """
    <p>*<img src=\"foo\" title=\"*\"/></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample475() {
    let markdown = """
    **<a href=\"**\">
    """
    let target = """
    <p>**<a href=\"**\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample476() {
    let markdown = """
    __<a href=\"__\">
    """
    let target = """
    <p>__<a href=\"__\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample477() {
    let markdown = """
    *a `*`*
    """
    let target = """
    <p><em>a <code>*</code></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample478() {
    let markdown = """
    _a `_`_
    """
    let target = """
    <p><em>a <code>_</code></em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample479() {
    let markdown = """
    **a<http://foo.bar/?q=**>
    """
    let target = """
    <p>**a<a href=\"http://foo.bar/?q=**\">http://foo.bar/?q=**</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample480() {
    let markdown = """
    __a<http://foo.bar/?q=__>
    """
    let target = """
    <p>__a<a href=\"http://foo.bar/?q=__\">http://foo.bar/?q=__</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample481() {
    let markdown = """
    [link](/uri \"title\")
    """
    let target = """
    <p><a href=\"/uri\" title=\"title\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample482() {
    let markdown = """
    [link](/uri)
    """
    let target = """
    <p><a href=\"/uri\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample483() {
    let markdown = """
    [link]()
    """
    let target = """
    <p><a href=\"\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample484() {
    let markdown = """
    [link](<>)
    """
    let target = """
    <p><a href=\"\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample485() {
    let markdown = """
    [link](/my uri)
    """
    let target = """
    <p>[link](/my uri)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample486() {
    let markdown = """
    [link](</my uri>)
    """
    let target = """
    <p><a href=\"/my%20uri\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample487() {
    let markdown = """
    [link](foo
    bar)
    """
    let target = """
    <p>[link](foo
    bar)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample488() {
    let markdown = """
    [link](<foo
    bar>)
    """
    let target = """
    <p>[link](<foo
    bar>)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample489() {
    let markdown = """
    [a](<b)c>)
    """
    let target = """
    <p><a href=\"b)c\">a</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample490() {
    let markdown = """
    [link](<foo\\>)
    """
    let target = """
    <p>[link](&lt;foo&gt;)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample491() {
    let markdown = """
    [a](<b)c
    [a](<b)c>
    [a](<b>c)
    """
    let target = """
    <p>[a](&lt;b)c
    [a](&lt;b)c&gt;
    [a](<b>c)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample492() {
    let markdown = """
    [link](\\(foo\\))
    """
    let target = """
    <p><a href=\"(foo)\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample493() {
    let markdown = """
    [link](foo(and(bar)))
    """
    let target = """
    <p><a href=\"foo(and(bar))\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample494() {
    let markdown = """
    [link](foo\\(and\\(bar\\))
    """
    let target = """
    <p><a href=\"foo(and(bar)\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample495() {
    let markdown = """
    [link](<foo(and(bar)>)
    """
    let target = """
    <p><a href=\"foo(and(bar)\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample496() {
    let markdown = """
    [link](foo\\)\\:)
    """
    let target = """
    <p><a href=\"foo):\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample497() {
    let markdown = """
    [link](#fragment)
    [link](http://example.com#fragment)
    [link](http://example.com?foo=3#frag)
    """
    let target = """
    <p><a href=\"#fragment\">link</a></p><p><a href=\"http://example.com#fragment\">link</a></p><p><a href=\"http://example.com?foo=3#frag\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample498() {
    let markdown = """
    [link](foo\\bar)
    """
    let target = """
    <p><a href=\"foo%5Cbar\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample499() {
    let markdown = """
    [link](foo%20b&auml;)
    """
    let target = """
    <p><a href=\"foo%20b%C3%A4\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample500() {
    let markdown = """
    [link](\"title\")
    """
    let target = """
    <p><a href=\"%22title%22\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample501() {
    let markdown = """
    [link](/url \"title\")
    [link](/url 'title')
    [link](/url (title))
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">link</a><a href=\"/url\" title=\"title\">link</a><a href=\"/url\" title=\"title\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample502() {
    let markdown = """
    [link](/url \"title \\\"&quot;\")
    """
    let target = """
    <p><a href=\"/url\" title=\"title &quot;&quot;\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample503() {
    let markdown = """
    [link](/url \"title\")
    """
    let target = """
    <p><a href=\"/url%C2%A0%22title%22\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample504() {
    let markdown = """
    [link](/url \"title \"and\" title\")
    """
    let target = """
    <p>[link](/url &quot;title &quot;and&quot; title&quot;)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample505() {
    let markdown = """
    [link](/url 'title \"and\" title')
    """
    let target = """
    <p><a href=\"/url\" title=\"title &quot;and&quot; title\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample506() {
    let markdown = """
    [link](   /uri
      \"title\"  )
    """
    let target = """
    <p><a href=\"/uri\" title=\"title\">link</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample507() {
    let markdown = """
    [link] (/uri)
    """
    let target = """
    <p>[link] (/uri)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample508() {
    let markdown = """
    [link [foo [bar]]](/uri)
    """
    let target = """
    <p><a href=\"/uri\">link [foo [bar]]</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample509() {
    let markdown = """
    [link] bar](/uri)
    """
    let target = """
    <p>[link] bar](/uri)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample510() {
    let markdown = """
    [link [bar](/uri)
    """
    let target = """
    <p>[link <a href=\"/uri\">bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample511() {
    let markdown = """
    [link \\[bar](/uri)
    """
    let target = """
    <p><a href=\"/uri\">link [bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample512() {
    let markdown = """
    [link *foo **bar** `#`*](/uri)
    """
    let target = """
    <p><a href=\"/uri\">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample513() {
    let markdown = """
    [![moon](moon.jpg)](/uri)
    """
    let target = """
    <p><a href=\"/uri\"><img src=\"moon.jpg\" alt=\"moon\" /></a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample514() {
    let markdown = """
    [foo [bar](/uri)](/uri)
    """
    let target = """
    <p>[foo <a href=\"/uri\">bar</a>](/uri)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample515() {
    let markdown = """
    [foo *[bar [baz](/uri)](/uri)*](/uri)
    """
    let target = """
    <p>[foo <em>[bar <a href=\"/uri\">baz</a>](/uri)</em>](/uri)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample516() {
    let markdown = """
    ![[[foo](uri1)](uri2)](uri3)
    """
    let target = """
    <p><img src=\"uri3\" alt=\"[foo](uri2)\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample517() {
    let markdown = """
    *[foo*](/uri)
    """
    let target = """
    <p>*<a href=\"/uri\">foo*</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample518() {
    let markdown = """
    [foo *bar](baz*)
    """
    let target = """
    <p><a href=\"baz*\">foo *bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample519() {
    let markdown = """
    *foo [bar* baz]
    """
    let target = """
    <p><em>foo [bar</em> baz]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample520() {
    let markdown = """
    [foo <bar attr=\"](baz)\">
    """
    let target = """
    <p>[foo <bar attr=\"](baz)\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample521() {
    let markdown = """
    [foo`](/uri)`
    """
    let target = """
    <p>[foo<code>](/uri)</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample522() {
    let markdown = """
    [foo<http://example.com/?search=](uri)>
    """
    let target = """
    <p>[foo<a href=\"http://example.com/?search=%5D(uri)\">http://example.com/?search=](uri)</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample523() {
    let markdown = """
    [foo][bar]
    [bar]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample524() {
    let markdown = """
    [link [foo [bar]]][ref]
    [ref]: /uri
    """
    let target = """
    <p><a href=\"/uri\">link [foo [bar]]</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample525() {
    let markdown = """
    [link \\[bar][ref]
    [ref]: /uri
    """
    let target = """
    <p><a href=\"/uri\">link [bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample526() {
    let markdown = """
    [link *foo **bar** `#`*][ref]
    [ref]: /uri
    """
    let target = """
    <p><a href=\"/uri\">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample527() {
    let markdown = """
    [![moon](moon.jpg)][ref]
    [ref]: /uri
    """
    let target = """
    <p><a href=\"/uri\"><img src=\"moon.jpg\" alt=\"moon\" /></a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample528() {
    let markdown = """
    [foo [bar](/uri)][ref]
    [ref]: /uri
    """
    let target = """
    <p>[foo <a href=\"/uri\">bar</a>]<a href=\"/uri\">ref</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample529() {
    let markdown = """
    [foo *bar [baz][ref]*][ref]
    [ref]: /uri
    """
    let target = """
    <p>[foo <em>bar <a href=\"/uri\">baz</a></em>]<a href=\"/uri\">ref</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample530() {
    let markdown = """
    *[foo*][ref]
    [ref]: /uri
    """
    let target = """
    <p>*<a href=\"/uri\">foo*</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample531() {
    let markdown = """
    [foo *bar][ref]
    [ref]: /uri
    """
    let target = """
    <p><a href=\"/uri\">foo *bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample532() {
    let markdown = """
    [foo <bar attr=\"][ref]\">
    [ref]: /uri
    """
    let target = """
    <p>[foo <bar attr=\"][ref]\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample533() {
    let markdown = """
    [foo`][ref]`
    [ref]: /uri
    """
    let target = """
    <p>[foo<code>][ref]</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample534() {
    let markdown = """
    [foo<http://example.com/?search=][ref]>
    [ref]: /uri
    """
    let target = """
    <p>[foo<a href=\"http://example.com/?search=%5D%5Bref%5D\">http://example.com/?search=][ref]</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample535() {
    let markdown = """
    [foo][BaR]
    [bar]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample536() {
    let markdown = """
    [Толпой][Толпой] is a Russian word.
    [ТОЛПОЙ]: /url
    """
    let target = """
    <p><a href=\"/url\">Толпой</a> is a Russian word.</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample537() {
    let markdown = """
    [Foo
      bar]: /url
    [Baz][Foo bar]
    """
    let target = """
    <p><a href=\"/url\">Baz</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample538() {
    let markdown = """
    [foo] [bar]
    [bar]: /url \"title\"
    """
    let target = """
    <p>[foo] <a href=\"/url\" title=\"title\">bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample539() {
    let markdown = """
    [foo]
    [bar]
    [bar]: /url \"title\"
    """
    let target = """
    <p>[foo]
    <a href=\"/url\" title=\"title\">bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample540() {
    let markdown = """
    [foo]: /url1
    [foo]: /url2
    [bar][foo]
    """
    let target = """
    <p><a href=\"/url1\">bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample541() {
    let markdown = """
    [bar][foo\\!]
    [foo!]: /url
    """
    let target = """
    <p>[bar][foo!]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample542() {
    let markdown = """
    [foo][ref[]
    [ref[]: /uri
    """
    let target = """
    <p>[foo][ref[]</p><p>[ref[]: /uri</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample543() {
    let markdown = """
    [foo][ref[bar]]
    [ref[bar]]: /uri
    """
    let target = """
    <p>[foo][ref[bar]]</p><p>[ref[bar]]: /uri</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample544() {
    let markdown = """
    [[[foo]]]
    [[[foo]]]: /url
    """
    let target = """
    <p>[[[foo]]]</p><p>[[[foo]]]: /url</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample545() {
    let markdown = """
    [foo][ref\\[]
    [ref\\[]: /uri
    """
    let target = """
    <p><a href=\"/uri\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample546() {
    let markdown = """
    [bar\\\\]: /uri
    [bar\\\\]
    """
    let target = """
    <p><a href=\"/uri\">bar\\</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample547() {
    let markdown = """
    []
    []: /uri
    """
    let target = """
    <p>[]</p><p>[]: /uri</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample548() {
    let markdown = """
    [
     ]
    [
     ]: /uri
    """
    let target = """
    <p>[
    ]</p><p>[
    ]: /uri</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample549() {
    let markdown = """
    [foo][]
    [foo]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample550() {
    let markdown = """
    [*foo* bar][]
    [*foo* bar]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\"><em>foo</em> bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample551() {
    let markdown = """
    [Foo][]
    [foo]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">Foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample552() {
    let markdown = """
    [foo] 
    []
    [foo]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">foo</a>
    []</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample553() {
    let markdown = """
    [foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample554() {
    let markdown = """
    [*foo* bar]
    [*foo* bar]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\"><em>foo</em> bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample555() {
    let markdown = """
    [[*foo* bar]]
    [*foo* bar]: /url \"title\"
    """
    let target = """
    <p>[<a href=\"/url\" title=\"title\"><em>foo</em> bar</a>]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample556() {
    let markdown = """
    [[bar [foo]
    [foo]: /url
    """
    let target = """
    <p>[[bar <a href=\"/url\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample557() {
    let markdown = """
    [Foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p><a href=\"/url\" title=\"title\">Foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample558() {
    let markdown = """
    [foo] bar
    [foo]: /url
    """
    let target = """
    <p><a href=\"/url\">foo</a> bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample559() {
    let markdown = """
    \\[foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p>[foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample560() {
    let markdown = """
    [foo*]: /url
    *[foo*]
    """
    let target = """
    <p>*<a href=\"/url\">foo*</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample561() {
    let markdown = """
    [foo][bar]
    [foo]: /url1
    [bar]: /url2
    """
    let target = """
    <p><a href=\"/url2\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample562() {
    let markdown = """
    [foo][]
    [foo]: /url1
    """
    let target = """
    <p><a href=\"/url1\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample563() {
    let markdown = """
    [foo]()
    [foo]: /url1
    """
    let target = """
    <p><a href=\"\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample564() {
    let markdown = """
    [foo](not a link)
    [foo]: /url1
    """
    let target = """
    <p><a href=\"/url1\">foo</a>(not a link)</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample565() {
    let markdown = """
    [foo][bar][baz]
    [baz]: /url
    """
    let target = """
    <p>[foo]<a href=\"/url\">bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample566() {
    let markdown = """
    [foo][bar][baz]
    [baz]: /url1
    [bar]: /url2
    """
    let target = """
    <p><a href=\"/url2\">foo</a><a href=\"/url1\">baz</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample567() {
    let markdown = """
    [foo][bar][baz]
    [baz]: /url1
    [foo]: /url2
    """
    let target = """
    <p>[foo]<a href=\"/url1\">bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample568() {
    let markdown = """
    ![foo](/url \"title\")
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample569() {
    let markdown = """
    ![foo *bar*]
    [foo *bar*]: train.jpg \"train & tracks\"
    """
    let target = """
    <p><img src=\"train.jpg\" alt=\"foo bar\" title=\"train &amp; tracks\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample570() {
    let markdown = """
    ![foo ![bar](/url)](/url2)
    """
    let target = """
    <p><img src=\"/url2\" alt=\"foo bar\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample571() {
    let markdown = """
    ![foo [bar](/url)](/url2)
    """
    let target = """
    <p><img src=\"/url2\" alt=\"foo bar\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample572() {
    let markdown = """
    ![foo *bar*][]
    [foo *bar*]: train.jpg \"train & tracks\"
    """
    let target = """
    <p><img src=\"train.jpg\" alt=\"foo bar\" title=\"train &amp; tracks\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample573() {
    let markdown = """
    ![foo *bar*][foobar]
    [FOOBAR]: train.jpg \"train & tracks\"
    """
    let target = """
    <p><img src=\"train.jpg\" alt=\"foo bar\" title=\"train &amp; tracks\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample574() {
    let markdown = """
    ![foo](train.jpg)
    """
    let target = """
    <p><img src=\"train.jpg\" alt=\"foo\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample575() {
    let markdown = """
    My ![foo bar](/path/to/train.jpg  \"title\"   )
    """
    let target = """
    <p>My <img src=\"/path/to/train.jpg\" alt=\"foo bar\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample576() {
    let markdown = """
    ![foo](<url>)
    """
    let target = """
    <p><img src=\"url\" alt=\"foo\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample577() {
    let markdown = """
    ![](/url)
    """
    let target = """
    <p><img src=\"/url\" alt=\"\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample578() {
    let markdown = """
    ![foo][bar]
    [bar]: /url
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample579() {
    let markdown = """
    ![foo][bar]
    [BAR]: /url
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample580() {
    let markdown = """
    ![foo][]
    [foo]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample581() {
    let markdown = """
    ![*foo* bar][]
    [*foo* bar]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo bar\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample582() {
    let markdown = """
    ![Foo][]
    [foo]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"Foo\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample583() {
    let markdown = """
    ![foo] 
    []
    [foo]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo\" title=\"title\" />
    []</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample584() {
    let markdown = """
    ![foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample585() {
    let markdown = """
    ![*foo* bar]
    [*foo* bar]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"foo bar\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample586() {
    let markdown = """
    ![[foo]]
    [[foo]]: /url \"title\"
    """
    let target = """
    <p>![[foo]]</p><p>[[foo]]: /url &quot;title&quot;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample587() {
    let markdown = """
    ![Foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p><img src=\"/url\" alt=\"Foo\" title=\"title\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample588() {
    let markdown = """
    !\\[foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p>![foo]</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample589() {
    let markdown = """
    \\![foo]
    [foo]: /url \"title\"
    """
    let target = """
    <p>!<a href=\"/url\" title=\"title\">foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample590() {
    let markdown = """
    <http://foo.bar.baz>
    """
    let target = """
    <p><a href=\"http://foo.bar.baz\">http://foo.bar.baz</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample591() {
    let markdown = """
    <http://foo.bar.baz/test?q=hello&id=22&boolean>
    """
    let target = """
    <p><a href=\"http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean\">http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample592() {
    let markdown = """
    <irc://foo.bar:2233/baz>
    """
    let target = """
    <p><a href=\"irc://foo.bar:2233/baz\">irc://foo.bar:2233/baz</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample593() {
    let markdown = """
    <MAILTO:FOO@BAR.BAZ>
    """
    let target = """
    <p><a href=\"MAILTO:FOO@BAR.BAZ\">MAILTO:FOO@BAR.BAZ</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample594() {
    let markdown = """
    <a+b+c:d>
    """
    let target = """
    <p><a href=\"a+b+c:d\">a+b+c:d</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample595() {
    let markdown = """
    <made-up-scheme://foo,bar>
    """
    let target = """
    <p><a href=\"made-up-scheme://foo,bar\">made-up-scheme://foo,bar</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample596() {
    let markdown = """
    <http://../>
    """
    let target = """
    <p><a href=\"http://../\">http://../</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample597() {
    let markdown = """
    <localhost:5001/foo>
    """
    let target = """
    <p><a href=\"localhost:5001/foo\">localhost:5001/foo</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample598() {
    let markdown = """
    <http://foo.bar/baz bim>
    """
    let target = """
    <p>&lt;http://foo.bar/baz bim&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample599() {
    let markdown = """
    <http://example.com/\\[\\>
    """
    let target = """
    <p><a href=\"http://example.com/%5C%5B%5C\">http://example.com/\\[\\</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample600() {
    let markdown = """
    <foo@bar.example.com>
    """
    let target = """
    <p><a href=\"mailto:foo@bar.example.com\">foo@bar.example.com</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample601() {
    let markdown = """
    <foo+special@Bar.baz-bar0.com>
    """
    let target = """
    <p><a href=\"mailto:foo+special@Bar.baz-bar0.com\">foo+special@Bar.baz-bar0.com</a></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample602() {
    let markdown = """
    <foo\\+@bar.example.com>
    """
    let target = """
    <p>&lt;foo+@bar.example.com&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample603() {
    let markdown = """
    <>
    """
    let target = """
    <p>&lt;&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample604() {
    let markdown = """
    < http://foo.bar >
    """
    let target = """
    <p>&lt; http://foo.bar &gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample605() {
    let markdown = """
    <m:abc>
    """
    let target = """
    <p>&lt;m:abc&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample606() {
    let markdown = """
    <foo.bar.baz>
    """
    let target = """
    <p>&lt;foo.bar.baz&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample607() {
    let markdown = """
    http://example.com
    """
    let target = """
    <p>http://example.com</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample608() {
    let markdown = """
    foo@bar.example.com
    """
    let target = """
    <p>foo@bar.example.com</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample609() {
    let markdown = """
    <a><bab><c2c>
    """
    let target = """
    <p><a><bab><c2c></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample610() {
    let markdown = """
    <a/><b2/>
    """
    let target = """
    <p><a/><b2/></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample611() {
    let markdown = """
    <a  /><b2
    data=\"foo\" >
    """
    let target = """
    <p><a  /><b2
    data=\"foo\" ></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample612() {
    let markdown = """
    <a foo=\"bar\" bam = 'baz <em>\"</em>'
    _boolean zoop:33=zoop:33 />
    """
    let target = """
    <p><a foo=\"bar\" bam = 'baz <em>\"</em>'
    _boolean zoop:33=zoop:33 /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample613() {
    let markdown = """
    Foo <responsive-image src=\"foo.jpg\" />
    """
    let target = """
    <p>Foo <responsive-image src=\"foo.jpg\" /></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample614() {
    let markdown = """
    <33> <__>
    """
    let target = """
    <p>&lt;33&gt; &lt;__&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample615() {
    let markdown = """
    <a h*#ref=\"hi\">
    """
    let target = """
    <p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample616() {
    let markdown = """
    <a href=\"hi'> <a href=hi'>
    """
    let target = """
    <p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample617() {
    let markdown = """
    < a><
    foo><bar/ >
    <foo bar=baz
    bim!bop />
    """
    let target = """
    <p>&lt; a&gt;&lt;
    foo&gt;&lt;bar/ &gt;
    &lt;foo bar=baz
    bim!bop /&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample618() {
    let markdown = """
    <a href='bar'title=title>
    """
    let target = """
    <p>&lt;a href='bar'title=title&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample619() {
    let markdown = """
    </a></foo >
    """
    let target = """
    <p></a></foo ></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample620() {
    let markdown = """
    </a href=\"foo\">
    """
    let target = """
    <p>&lt;/a href=&quot;foo&quot;&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample621() {
    let markdown = """
    foo <!-- this is a
    comment - with hyphen -->
    """
    let target = """
    <p>foo <!-- this is a
    comment - with hyphen --></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample622() {
    let markdown = """
    foo <!-- not a comment -- two hyphens -->
    """
    let target = """
    <p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample623() {
    let markdown = """
    foo <!--> foo -->
    foo <!-- foo--->
    """
    let target = """
    <p>foo &lt;!--&gt; foo --&gt;</p><p>foo &lt;!-- foo---&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample624() {
    let markdown = """
    foo <?php echo $a; ?>
    """
    let target = """
    <p>foo <?php echo $a; ?></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample625() {
    let markdown = """
    foo <!ELEMENT br EMPTY>
    """
    let target = """
    <p>foo <!ELEMENT br EMPTY></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample626() {
    let markdown = """
    foo <![CDATA[>&<]]>
    """
    let target = """
    <p>foo <![CDATA[>&<]]></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample627() {
    let markdown = """
    foo <a href=\"&ouml;\">
    """
    let target = """
    <p>foo <a href=\"&ouml;\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample628() {
    let markdown = """
    foo <a href=\"\\*\">
    """
    let target = """
    <p>foo <a href=\"\\*\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample629() {
    let markdown = """
    <a href=\"\\\"\">
    """
    let target = """
    <p>&lt;a href=&quot;&quot;&quot;&gt;</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample630() {
    let markdown = """
    foo  
    baz
    """
    let target = """
    <p>foo<br />
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample631() {
    let markdown = """
    foo\\
    baz
    """
    let target = """
    <p>foo<br />
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample632() {
    let markdown = """
    foo       
    baz
    """
    let target = """
    <p>foo<br />
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample633() {
    let markdown = """
    foo  
         bar
    """
    let target = """
    <p>foo<br />
    bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample634() {
    let markdown = """
    foo\\
         bar
    """
    let target = """
    <p>foo<br />
    bar</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample635() {
    let markdown = """
    *foo  
    bar*
    """
    let target = """
    <p><em>foo<br />
    bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample636() {
    let markdown = """
    *foo\\
    bar*
    """
    let target = """
    <p><em>foo<br />
    bar</em></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample637() {
    let markdown = """
    `code 
    span`
    """
    let target = """
    <p><code>code  span</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample638() {
    let markdown = """
    `code\\
    span`
    """
    let target = """
    <p><code>code\\ span</code></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample639() {
    let markdown = """
    <a href=\"foo  
    bar\">
    """
    let target = """
    <p><a href=\"foo  
    bar\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample640() {
    let markdown = """
    <a href=\"foo\\
    bar\">
    """
    let target = """
    <p><a href=\"foo\\
    bar\"></p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample641() {
    let markdown = """
    foo\\
    """
    let target = """
    <p>foo\\</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample642() {
    let markdown = """
    foo  
    """
    let target = """
    <p>foo</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample643() {
    let markdown = """
    ### foo\\
    """
    let target = """
    <h3>foo\\</h3>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample644() {
    let markdown = """
    ### foo  
    """
    let target = """
    <h3>foo</h3>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample645() {
    let markdown = """
    foo
    baz
    """
    let target = """
    <p>foo
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample646() {
    let markdown = """
    foo 
     baz
    """
    let target = """
    <p>foo
    baz</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample647() {
    let markdown = """
    hello $.;'there
    """
    let target = """
    <p>hello $.;'there</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample648() {
    let markdown = """
    Foo χρῆν
    """
    let target = """
    <p>Foo χρῆν</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}

func testExample649() {
    let markdown = """
    Multiple     spaces
    """
    let target = """
    <p>Multiple     spaces</p>
    """
    let html = parser.html(from: markdown)
    XCTAssertEqual(html, target, markdown)
}


    



    func testAllcc() {
        
        for test in TestCase.all {
            print("Testing \(test.example)")
            var target = test.html.replacingOccurrences(of: ">\n<", with: "><")
            while target.hasSuffix("\n") {
                target = String(target.dropLast())
            }
            var markdown = test.markdown
            if markdown.hasSuffix("\n") {
                markdown = String(markdown.dropLast())
            }
            
            let html = parser.html(from: markdown)
            
            XCTAssertEqual(html, target, markdown)
        }
        
    }
}
