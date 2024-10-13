(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3816 0)
(declare-sort var3432 0)
(declare-sort var3802 0)
(declare-sort var3039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3039-init () var3039)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3039 String) void)
(declare-const null-var3816 var3816)
(declare-const null-String String)
(declare-const null-var3802 var3802)
(declare-const var3109 var3816) ; Statement: r22 := @this: jdk.jfr.internal.MetadataReader 
(assert (not (= var3109 null-var3816)))
(declare-const var3127 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3127 null-String)))
(declare-const var2138 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2138 null-String)))
(define-const var3845 Int (- 1)) ; Statement: b3 = -1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1000 var3802) ; Statement: $r16 := @caughtexception 
(assert (not (= var1000 null-var3802)))
(define-const var1305 var3039 var3039-init) ; Statement: $r17 = new java.io.IOException 
(define-const var2216 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2216)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2216!1 String)
(assert (= var2216!1 ""))
(assert true)
(define-const var503 String (append/672562846 var2216!1 "Could not parse text representation of ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse text representation of ") 
(declare-const var2216!2 String)
(assert (= var2216!2 (str.++ var2216!1 "Could not parse text representation of ")))
(assert true)
(define-const var2253 String (append/672562846 var503 var3127)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var503!1 String)
(assert (= var503!1 (str.++ var503 var3127)))
(assert true)
(define-const var657 String (toString/-2075883882 var2253)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1305 var657)) ; Statement: specialinvoke $r17.<java.io.IOException: void <init>(java.lang.String)>($r21) 

(declare-const var1305!1 var3039)
(declare-const var657!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3039-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3816=jdk.jfr.internal.MetadataReader, var3109=r22, var3127=r0, var3432=null_type, var2138=r1, var3845=b3, var3802=java.lang.IllegalArgumentException, var1000=$r16, var3039=java.io.IOException, var1305=$r17, var2216=$r18, var503=$r19, var2253=$r20, var657=$r21}
; {jdk.jfr.internal.MetadataReader=var3816, r22=var3109, r0=var3127, null_type=var3432, r1=var2138, b3=var3845, java.lang.IllegalArgumentException=var3802, $r16=var1000, java.io.IOException=var3039, $r17=var1305, $r18=var2216, $r19=var503, $r20=var2253, $r21=var657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r22 := @this: jdk.jfr.internal.MetadataReader;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	b3 = -1;	$r16 := @caughtexception;	$r17 = new java.io.IOException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse text representation of ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.io.IOException: void <init>(java.lang.String)>($r21);	throw $r17
;block_num 2