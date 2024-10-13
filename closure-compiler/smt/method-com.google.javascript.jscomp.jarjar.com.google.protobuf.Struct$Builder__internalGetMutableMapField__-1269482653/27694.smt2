(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1244 0)
(declare-sort var500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var500-init () var500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var500 String) void)
(declare-const null-var1244 var1244)
(declare-const null-Int Int)
(declare-const var516 var1244) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder 
(assert (not (= var516 null-var1244)))
(declare-const var2026 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2026 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapField internalGetMutableFields()>();     default: goto $r2 = new java.lang.RuntimeException; } 
(assert (and (not (= var2026 1)) true)) ; Intersect: Negate: Cond: i0 == 1   and Non Conditional 
(define-const var3733 var500 var500-init) ; Statement: $r2 = new java.lang.RuntimeException 
(define-const var2873 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2873)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2873!1 String)
(assert (= var2873!1 ""))
(assert true)
(define-const var2402 String (append/672562846 var2873!1 "Invalid map field number: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid map field number: ") 
(declare-const var2873!2 String)
(assert (= var2873!2 (str.++ var2873!1 "Invalid map field number: ")))
(assert true)
(define-const var3307 String (append/-1001720160 var2402 var2026)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2402!1 String)
(assert (str.prefixof var2402 var2402!1))
(assert true)
(define-const var2310 String (toString/-2075883882 var3307)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3733 var2310)) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var3733!1 var500)
(declare-const var2310!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var500-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1244=com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder, var516=r0, var2026=i0, var500=java.lang.RuntimeException, var3733=$r2, var2873=$r3, var2402=$r4, var3307=$r5, var2310=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder=var1244, r0=var516, i0=var2026, java.lang.RuntimeException=var500, $r2=var3733, $r3=var2873, $r4=var2402, $r5=var3307, $r6=var2310}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapField internalGetMutableFields()>();     default: goto $r2 = new java.lang.RuntimeException; };	$r2 = new java.lang.RuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid map field number: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2