(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var197 0)
(declare-sort var3230 0)
(declare-sort var592 0)
(declare-sort var1905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var592_getTagWireType/-25892966 (Int) Int)
(declare-fun var1905-init () var1905)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1905 String) void)
(declare-const null-Int Int)
(declare-const null-var197 var197)
(declare-const null-var3230 var3230)
(declare-const var1637 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1637 null-Int)))
(declare-const var1488 var197) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1488 null-var197)))
(declare-const var830 var3230) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var830 null-var3230)))
(define-const var2471 Int (var592_getTagWireType/-25892966 var1637)) ; Statement: $i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat: int getTagWireType(int)>(i0) 
 ; Statement: tableswitch($i1) {     case 0: goto $r10 = (java.lang.Long) r2;     case 1: goto $r7 = newarray (java.lang.Object)[1];     case 2: goto $r6 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString) r2;     case 3: goto $r5 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet) r2;     case 4: goto $r12 = new java.lang.IllegalArgumentException;     case 5: goto $r1 = newarray (java.lang.Object)[1];     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2471 3)) (and (not (= var2471 2)) (and (not (= var2471 1)) (and (not (= var2471 0)) true))))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Intersect: Negate: Cond: $i1 == 0   and Non Conditional    
(define-const var1522 var1905 var1905-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var1903 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1903)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1903!1 String)
(assert (= var1903!1 ""))
(assert true)
(define-const var2136 String (append/672562846 var1903!1 "Bad tag: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad tag: ") 
(declare-const var1903!2 String)
(assert (= var1903!2 (str.++ var1903!1 "Bad tag: ")))
(assert true)
(define-const var2527 String (append/-1001720160 var2136 var1637)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2136!1 String)
(assert (str.prefixof var2136 var2136!1))
(assert true)
(define-const var489 String (toString/-2075883882 var2527)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1522 var489)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var1522!1 var1905)
(declare-const var489!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var592_getTagWireType/-25892966=([int], int), var1905-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1637=i0, var197=java.lang.Object, var1488=r2, var3230=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var830=r0, var592=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat, var2471=$i1, var1905=java.lang.IllegalArgumentException, var1522=$r12, var1903=$r13, var2136=$r14, var2527=$r15, var489=$r16}
; {i0=var1637, java.lang.Object=var197, r2=var1488, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var3230, r0=var830, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat=var592, $i1=var2471, java.lang.IllegalArgumentException=var1905, $r12=var1522, $r13=var1903, $r14=var2136, $r15=var2527, $r16=var489}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	$i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat: int getTagWireType(int)>(i0);	tableswitch($i1) {     case 0: goto $r10 = (java.lang.Long) r2;     case 1: goto $r7 = newarray (java.lang.Object)[1];     case 2: goto $r6 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString) r2;     case 3: goto $r5 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet) r2;     case 4: goto $r12 = new java.lang.IllegalArgumentException;     case 5: goto $r1 = newarray (java.lang.Object)[1];     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad tag: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r12
;block_num 2