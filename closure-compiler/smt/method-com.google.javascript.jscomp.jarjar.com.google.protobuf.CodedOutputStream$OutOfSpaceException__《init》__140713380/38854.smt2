(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var611 0)
(declare-sort var1672 0)
(declare-sort var843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var843 String) void)
(declare-fun cast-from-var611-to-var843 (var611) var843)
(declare-const null-var611 var611)
(declare-const null-String String)
(declare-const var3582 var611) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(assert (not (= var3582 null-var611)))
(declare-const var1900 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1900 null-String)))
(define-const var695 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var695)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var695!1 String)
(assert (= var695!1 ""))
(assert true)
(define-const var1066 String (append/672562846 var695!1 "CodedOutputStream was writing to a flat byte array and ran out of space.: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CodedOutputStream was writing to a flat byte array and ran out of space.: ") 
(declare-const var695!2 String)
(assert (= var695!2 (str.++ var695!1 "CodedOutputStream was writing to a flat byte array and ran out of space.: ")))
(assert true)
(define-const var3347 String (append/672562846 var1066 var1900)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1066!1 String)
(assert (= var1066!1 (str.++ var1066 var1900)))
(assert true)
(define-const var3308 String (toString/-2075883882 var3347)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 (cast-from-var611-to-var843 var3582) var3308)) ; Statement: specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var3582!1 var611)
(declare-const var3308!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void), cast-from-var611-to-var843=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException], java.io.IOException)}
; {var611=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var3582=r0, var1900=r2, var1672=null_type, var695=$r1, var1066=$r3, var3347=$r4, var3308=$r5, var843=java.io.IOException}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var611, r0=var3582, r2=var1900, null_type=var1672, $r1=var695, $r3=var1066, $r4=var3347, $r5=var3308, java.io.IOException=var843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CodedOutputStream was writing to a flat byte array and ran out of space.: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r5);	return
;block_num 1