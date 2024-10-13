(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2990 0)
(declare-sort var1642 0)
(declare-sort var2851 0)
(declare-sort var1755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2851_getTagWireType/-25892966 (Int) Int)
(declare-fun var1755-init () var1755)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1755 String) void)
(declare-const null-Int Int)
(declare-const null-var2990 var2990)
(declare-const null-var1642 var1642)
(declare-const var322 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var322 null-Int)))
(declare-const var1645 var2990) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1645 null-var2990)))
(declare-const var2050 var1642) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var2050 null-var1642)))
(define-const var2609 Int (var2851_getTagWireType/-25892966 var322)) ; Statement: $i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat: int getTagWireType(int)>(i0) 
 ; Statement: tableswitch($i1) {     case 0: goto $r10 = (java.lang.Long) r2;     case 1: goto $r7 = newarray (java.lang.Object)[1];     case 2: goto $r6 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString) r2;     case 3: goto $r5 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet) r2;     case 4: goto $r12 = new java.lang.IllegalArgumentException;     case 5: goto $r1 = newarray (java.lang.Object)[1];     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2609 3)) (and (not (= var2609 2)) (and (not (= var2609 1)) (and (not (= var2609 0)) true))))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Intersect: Negate: Cond: $i1 == 0   and Non Conditional    
(define-const var3299 var1755 var1755-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var3255 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3255)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3255!1 String)
(assert (= var3255!1 ""))
(assert true)
(define-const var2296 String (append/672562846 var3255!1 "Bad tag: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad tag: ") 
(declare-const var3255!2 String)
(assert (= var3255!2 (str.++ var3255!1 "Bad tag: ")))
(assert true)
(define-const var566 String (append/-1001720160 var2296 var322)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2296!1 String)
(assert (str.prefixof var2296 var2296!1))
(assert true)
(define-const var2008 String (toString/-2075883882 var566)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3299 var2008)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var3299!1 var1755)
(declare-const var2008!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2851_getTagWireType/-25892966=([int], int), var1755-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var322=i0, var2990=java.lang.Object, var1645=r2, var1642=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var2050=r0, var2851=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat, var2609=$i1, var1755=java.lang.IllegalArgumentException, var3299=$r12, var3255=$r13, var2296=$r14, var566=$r15, var2008=$r16}
; {i0=var322, java.lang.Object=var2990, r2=var1645, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var1642, r0=var2050, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat=var2851, $i1=var2609, java.lang.IllegalArgumentException=var1755, $r12=var3299, $r13=var3255, $r14=var2296, $r15=var566, $r16=var2008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	$i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat: int getTagWireType(int)>(i0);	tableswitch($i1) {     case 0: goto $r10 = (java.lang.Long) r2;     case 1: goto $r7 = newarray (java.lang.Object)[1];     case 2: goto $r6 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString) r2;     case 3: goto $r5 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet) r2;     case 4: goto $r12 = new java.lang.IllegalArgumentException;     case 5: goto $r1 = newarray (java.lang.Object)[1];     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad tag: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r12
;block_num 2