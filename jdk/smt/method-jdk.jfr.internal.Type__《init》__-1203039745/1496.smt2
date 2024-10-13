(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1306 0)
(declare-sort var3205 0)
(declare-sort var3369 0)
(declare-sort var3590 0)
(declare-sort var1461 0)
(declare-sort var1455 0)
(declare-sort var2758 0)
(declare-sort var2149 0)
(declare-sort var321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3590) void)
(declare-fun cast-from-var1306-to-var3590 (var1306) var3590)
(declare-fun var1461-init () var1461)
(declare-fun <init>/-2107846739 (var1461) void)
(declare-fun annos/1159652470 (var1306) var1461)
(declare-fun var1455-init () var1455)
(declare-fun <init>/-325640736 (var1455) void)
(declare-fun cast-from-var1455-to-var2758 (var1455) var2758)
(declare-fun fields/1159652470 (var1306) var2758)
(declare-fun remove/1159652470 (var1306) Bool)
(declare-fun var2149_requireNonNull/-961817614 (var3590) var3590)
(declare-fun cast-from-String-to-var3590 (String) var3590)
(declare-fun var1306_isValidJavaIdentifier/420573885 (String) Bool)
(declare-fun var321-init () var321)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var321 String) void)
(declare-const null-var1306 var1306)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3369 var3369)
(declare-const var3042 var1306) ; Statement: r0 := @this: jdk.jfr.internal.Type 
(assert (not (= var3042 null-var1306)))
(declare-const var865 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var865 null-String)))
(declare-const var1589 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1589 null-String)))
(declare-const var1195 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var1195 null-Int)))
(declare-const var572 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var572 null-Bool)))
(declare-const var522 var3369) ; Statement: r5 := @parameter4: java.lang.Boolean 
(assert (not (= var522 null-var3369)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1306-to-var3590 var3042))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3042!1 var1306)
(define-const var679 var1461 var1461-init) ; Statement: $r1 = new jdk.jfr.internal.AnnotationConstruct 
(assert true)
;(assert (<init>/-2107846739 var679)) ; Statement: specialinvoke $r1.<jdk.jfr.internal.AnnotationConstruct: void <init>()>() 

(declare-const var679!1 var1461)
(declare-const var3042!2 var1306)
(assert (not (= var3042!2 null-var1306)))
(assert (= (annos/1159652470 var3042!2) var679!1)) ; Statement: r0.<jdk.jfr.internal.Type: jdk.jfr.internal.AnnotationConstruct annos> = $r1 
(define-const var352 var1455 var1455-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var352)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var352!1 var1455)
(declare-const var3042!3 var1306)
(assert (not (= var3042!3 null-var1306)))
(assert (= (fields/1159652470 var3042!3) (cast-from-var1455-to-var2758 var352!1))) ; Statement: r0.<jdk.jfr.internal.Type: java.util.List fields> = $r2 
(declare-const var3042!4 var1306)
(assert (not (= var3042!4 null-var1306)))
(assert (= (remove/1159652470 var3042!4) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.Type: boolean remove> = 1 
;(assert (var2149_requireNonNull/-961817614 (cast-from-String-to-var3590 var865))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r3) 

(declare-const var865!1 String)
(define-const var2795 Bool (var1306_isValidJavaIdentifier/420573885 var865!1)) ; Statement: $z0 = staticinvoke <jdk.jfr.internal.Type: boolean isValidJavaIdentifier(java.lang.String)>(r3) 
 ; Statement: if $z0 != 0 goto r0.<jdk.jfr.internal.Type: boolean constantPool> = z1 
(assert (not (not (= (ite var2795 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2665 var321 var321-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var907 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var907)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var907!1 String)
(assert (= var907!1 ""))
(assert true)
(define-const var1293 String (append/672562846 var907!1 var865!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var907!2 String)
(assert (= var907!2 (str.++ var907!1 var865!1)))
(assert true)
(define-const var1625 String (append/672562846 var1293 " is not a valid Java identifier")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid Java identifier") 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 " is not a valid Java identifier")))
(assert true)
(define-const var55 String (toString/-2075883882 var1625)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2665 var55)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2665!1 var321)
(declare-const var55!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1306-to-var3590=([jdk.jfr.internal.Type], java.lang.Object), var1461-init=([], jdk.jfr.internal.AnnotationConstruct), <init>/-2107846739=([jdk.jfr.internal.AnnotationConstruct], void), annos/1159652470=([jdk.jfr.internal.Type], jdk.jfr.internal.AnnotationConstruct), var1455-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1455-to-var2758=([java.util.ArrayList], java.util.List), fields/1159652470=([jdk.jfr.internal.Type], java.util.List), remove/1159652470=([jdk.jfr.internal.Type], boolean), var2149_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3590=([java.lang.String], java.lang.Object), var1306_isValidJavaIdentifier/420573885=([java.lang.String], boolean), var321-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1306=jdk.jfr.internal.Type, var3042=r0, var865=r3, var3205=null_type, var1589=r4, var1195=l0, var572=z1, var3369=java.lang.Boolean, var522=r5, var3590=java.lang.Object, var1461=jdk.jfr.internal.AnnotationConstruct, var679=$r1, var1455=java.util.ArrayList, var352=$r2, var2758=java.util.List, var2149=java.util.Objects, var2795=$z0, var321=java.lang.IllegalArgumentException, var2665=$r6, var907=$r7, var1293=$r8, var1625=$r9, var55=$r10}
; {jdk.jfr.internal.Type=var1306, r0=var3042, r3=var865, null_type=var3205, r4=var1589, l0=var1195, z1=var572, java.lang.Boolean=var3369, r5=var522, java.lang.Object=var3590, jdk.jfr.internal.AnnotationConstruct=var1461, $r1=var679, java.util.ArrayList=var1455, $r2=var352, java.util.List=var2758, java.util.Objects=var2149, $z0=var2795, java.lang.IllegalArgumentException=var321, $r6=var2665, $r7=var907, $r8=var1293, $r9=var1625, $r10=var55}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Type;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	l0 := @parameter2: long;	z1 := @parameter3: boolean;	r5 := @parameter4: java.lang.Boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new jdk.jfr.internal.AnnotationConstruct;	specialinvoke $r1.<jdk.jfr.internal.AnnotationConstruct: void <init>()>();	r0.<jdk.jfr.internal.Type: jdk.jfr.internal.AnnotationConstruct annos> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<jdk.jfr.internal.Type: java.util.List fields> = $r2;	r0.<jdk.jfr.internal.Type: boolean remove> = 1;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r3);	$z0 = staticinvoke <jdk.jfr.internal.Type: boolean isValidJavaIdentifier(java.lang.String)>(r3);	if $z0 != 0 goto r0.<jdk.jfr.internal.Type: boolean constantPool> = z1;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid Java identifier");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2