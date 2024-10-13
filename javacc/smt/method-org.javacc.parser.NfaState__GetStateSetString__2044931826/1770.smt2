(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var319 0)
(declare-sort var923 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun put/1981026245 (var319 var669 var669) var669)
(declare-fun cast-from-String-to-var669 (String) var669)
(declare-fun cast-from-__Array__Int__Int__-to-var669 ((Array Int Int)) var669)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var923-allNextStates var319)
(declare-const var3548 (Array Int Int)) ; Statement: r0 := @parameter0: int[] 
(assert (not (= var3548 null-__Array__Int__Int__)))
(define-const var3469 String "{ ") ; Statement: r12 = "{ " 
(define-const var864 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2513 Int (getLength-Arr-Int-1 var3548)) ; Statement: $i4 = lengthof r0 
 ; Statement: if i3 >= $i4 goto $r1 = new java.lang.StringBuilder 
(assert (>= var864 var2513)) ; Cond: i3 >= $i4 
(define-const var3352 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3352)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3352!1 String)
(assert (= var3352!1 ""))
(assert true)
(define-const var3763 String (append/672562846 var3352!1 var3469)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var3352!2 String)
(assert (= var3352!2 (str.++ var3352!1 var3469)))
(assert true)
(define-const var441 String (append/672562846 var3763 "};")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("};") 
(declare-const var3763!1 String)
(assert (= var3763!1 (str.++ var3763 "};")))
(assert true)
(define-const var2729 String (toString/-2075883882 var441)) ; Statement: r13 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var232 var319 var923-allNextStates) ; Statement: $r4 = <org.javacc.parser.NfaState: java.util.Hashtable allNextStates> 
(assert true)
;(assert (put/1981026245 var232 (cast-from-String-to-var669 var2729) (cast-from-__Array__Int__Int__-to-var669 var3548))) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r13, r0) 

(declare-const var232!1 var319)
(declare-const var2729!1 String)
(declare-const var3548!1 (Array Int Int))
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([int[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var669=([java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var669=([int[]], java.lang.Object)}
; {var3548=r0, var3469=r12, var864=i3, var2513=$i4, var3352=$r1, var3763=$r2, var441=$r3, var2729=r13, var319=java.util.Hashtable, var923=org.javacc.parser.NfaState, var232=$r4, var669=java.lang.Object}
; {r0=var3548, r12=var3469, i3=var864, $i4=var2513, $r1=var3352, $r2=var3763, $r3=var441, r13=var2729, java.util.Hashtable=var319, org.javacc.parser.NfaState=var923, $r4=var232, java.lang.Object=var669}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: int[];	r12 = "{ ";	i3 = 0;	$i4 = lengthof r0;	if i3 >= $i4 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("};");	r13 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = <org.javacc.parser.NfaState: java.util.Hashtable allNextStates>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r13, r0);	return r13
;block_num 3