(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1371 0)
(declare-sort var2529 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun source/1080335917 (var1371) String)
(declare-fun pos/1080335917 (var1371) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun regionMatches/25727589 (String Int String Int Int) Bool)
(declare-const null-var1371 var1371)
(declare-const null-String String)
(declare-const null-var2572 var2572)
(declare-const var2775 var1371) ; Statement: r0 := @this: jdk.nashorn.internal.parser.JSONParser 
(assert (not (= var2775 null-var1371)))
(declare-const var2308 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2308 null-String)))
(declare-const var3894 var2572) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3894 null-var2572)))
(define-const var794 String (source/1080335917 var2775)) ; Statement: $r2 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source> 
(define-const var2574 Int (pos/1080335917 var2775)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert true)
(define-const var751 Int (length/-134980193 var2308)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3507 Bool (regionMatches/25727589 var794 var2574 var2308 0 var751)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>($i0, r1, 0, $i1) 
 ; Statement: if $z0 != 0 goto $i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert (not (= (ite var3507 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2017 Int (pos/1080335917 var2775)) ; Statement: $i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert true)
(define-const var2620 Int (length/-134980193 var2308)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2157 Int (+ var2017 var2620)) ; Statement: $i4 = $i2 + $i3 
(declare-const var2775!1 var1371)
(assert (not (= var2775!1 null-var1371)))
(assert (= (pos/1080335917 var2775!1) var2157)) ; Statement: r0.<jdk.nashorn.internal.parser.JSONParser: int pos> = $i4 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {source/1080335917=([jdk.nashorn.internal.parser.JSONParser], java.lang.String), pos/1080335917=([jdk.nashorn.internal.parser.JSONParser], int), length/-134980193=([java.lang.String], int), regionMatches/25727589=([java.lang.String, int, java.lang.String, int, int], boolean)}
; {var1371=jdk.nashorn.internal.parser.JSONParser, var2775=r0, var2308=r1, var2529=null_type, var2572=java.lang.Object, var3894=r3, var794=$r2, var2574=$i0, var751=$i1, var3507=$z0, var2017=$i2, var2620=$i3, var2157=$i4}
; {jdk.nashorn.internal.parser.JSONParser=var1371, r0=var2775, r1=var2308, null_type=var2529, java.lang.Object=var2572, r3=var3894, $r2=var794, $i0=var2574, $i1=var751, $z0=var3507, $i2=var2017, $i3=var2620, $i4=var2157}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.JSONParser;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	$r2 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source>;	$i0 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>($i0, r1, 0, $i1);	if $z0 != 0 goto $i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i2 + $i3;	r0.<jdk.nashorn.internal.parser.JSONParser: int pos> = $i4;	return r3
;block_num 2