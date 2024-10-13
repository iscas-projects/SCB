(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2730 0)
(declare-sort var1010 0)
(declare-sort var3311 0)
(declare-sort var2432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun source/1080335917 (var2730) String)
(declare-fun pos/1080335917 (var2730) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun regionMatches/25727589 (String Int String Int Int) Bool)
(declare-fun expectedError/-1147316276 (var2730 Int String String) var2432)
(declare-const null-var2730 var2730)
(declare-const null-String String)
(declare-const null-var3311 var3311)
(declare-const var183 var2730) ; Statement: r0 := @this: jdk.nashorn.internal.parser.JSONParser 
(assert (not (= var183 null-var2730)))
(declare-const var1108 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1108 null-String)))
(declare-const var299 var3311) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var299 null-var3311)))
(define-const var2341 String (source/1080335917 var183)) ; Statement: $r2 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source> 
(define-const var2646 Int (pos/1080335917 var183)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert true)
(define-const var1665 Int (length/-134980193 var1108)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var2080 Bool (regionMatches/25727589 var2341 var2646 var1108 0 var1665)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>($i0, r1, 0, $i1) 
 ; Statement: if $z0 != 0 goto $i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert (not (not (= (ite var2080 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2994 Int (pos/1080335917 var183)) ; Statement: $i5 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert true)
(define-const var3982 var2432 (expectedError/-1147316276 var183 var2994 "json literal" "ident")) ; Statement: $r4 = specialinvoke r0.<jdk.nashorn.internal.parser.JSONParser: jdk.nashorn.internal.runtime.ParserException expectedError(int,java.lang.String,java.lang.String)>($i5, "json literal", "ident") 
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {source/1080335917=([jdk.nashorn.internal.parser.JSONParser], java.lang.String), pos/1080335917=([jdk.nashorn.internal.parser.JSONParser], int), length/-134980193=([java.lang.String], int), regionMatches/25727589=([java.lang.String, int, java.lang.String, int, int], boolean), expectedError/-1147316276=([jdk.nashorn.internal.parser.JSONParser, int, java.lang.String, java.lang.String], jdk.nashorn.internal.runtime.ParserException)}
; {var2730=jdk.nashorn.internal.parser.JSONParser, var183=r0, var1108=r1, var1010=null_type, var3311=java.lang.Object, var299=r3, var2341=$r2, var2646=$i0, var1665=$i1, var2080=$z0, var2994=$i5, var2432=jdk.nashorn.internal.runtime.ParserException, var3982=$r4}
; {jdk.nashorn.internal.parser.JSONParser=var2730, r0=var183, r1=var1108, null_type=var1010, java.lang.Object=var3311, r3=var299, $r2=var2341, $i0=var2646, $i1=var1665, $z0=var2080, $i5=var2994, jdk.nashorn.internal.runtime.ParserException=var2432, $r4=var3982}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.JSONParser;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	$r2 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source>;	$i0 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>($i0, r1, 0, $i1);	if $z0 != 0 goto $i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$i5 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$r4 = specialinvoke r0.<jdk.nashorn.internal.parser.JSONParser: jdk.nashorn.internal.runtime.ParserException expectedError(int,java.lang.String,java.lang.String)>($i5, "json literal", "ident");	throw $r4
;block_num 2