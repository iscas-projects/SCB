(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2520 0)
(declare-sort var414 0)
(declare-sort var104 0)
(declare-sort var1850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-252871109 (var1850 String var104) void)
(declare-fun cast-from-var2520-to-var1850 (var2520) var1850)
(declare-const null-var2520 var2520)
(declare-const null-String String)
(declare-const null-var104 var104)
(declare-const var1977 var2520) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(assert (not (= var1977 null-var2520)))
(declare-const var50 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var50 null-String)))
(declare-const var2986 var104) ; Statement: r5 := @parameter1: java.lang.Throwable 
(assert (not (= var2986 null-var104)))
(define-const var3670 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3670)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3670!1 String)
(assert (= var3670!1 ""))
(assert true)
(define-const var2647 String (append/672562846 var3670!1 "CodedOutputStream was writing to a flat byte array and ran out of space.: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CodedOutputStream was writing to a flat byte array and ran out of space.: ") 
(declare-const var3670!2 String)
(assert (= var3670!2 (str.++ var3670!1 "CodedOutputStream was writing to a flat byte array and ran out of space.: ")))
(assert true)
(define-const var1851 String (append/672562846 var2647 var50)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2647!1 String)
(assert (= var2647!1 (str.++ var2647 var50)))
(assert true)
(define-const var3543 String (toString/-2075883882 var1851)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-252871109 (cast-from-var2520-to-var1850 var1977) var3543 var2986)) ; Statement: specialinvoke r0.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5) 

(declare-const var1977!1 var2520)
(declare-const var3543!1 String)
(declare-const var2986!1 var104)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void), cast-from-var2520-to-var1850=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException], java.io.IOException)}
; {var2520=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var1977=r0, var50=r2, var414=null_type, var104=java.lang.Throwable, var2986=r5, var3670=$r1, var2647=$r3, var1851=$r4, var3543=$r6, var1850=java.io.IOException}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var2520, r0=var1977, r2=var50, null_type=var414, java.lang.Throwable=var104, r5=var2986, $r1=var3670, $r3=var2647, $r4=var1851, $r6=var3543, java.io.IOException=var1850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CodedOutputStream was writing to a flat byte array and ran out of space.: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5);	return
;block_num 1