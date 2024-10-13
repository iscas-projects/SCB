(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3978 0)
(declare-sort var2367 0)
(declare-sort var370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var370_reflectivePrintWithIndent/1730795066 (var3978 String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3978 var3978)
(declare-const null-String String)
(declare-const var3330 var3978) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite 
(assert (not (= var3330 null-var3978)))
(declare-const var3018 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3018 null-String)))
(define-const var1808 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1808)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1808!1 String)
(assert (= var1808!1 ""))
(assert true)
(define-const var744 String (append/672562846 var1808!1 "# ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("# ") 
(declare-const var1808!2 String)
(assert (= var1808!2 (str.++ var1808!1 "# ")))
(assert true)
;(assert (append/672562846 var744 var3018)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 var3018)))
;(assert (var370_reflectivePrintWithIndent/1730795066 var3330 var1808!2 0)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLiteToString: void reflectivePrintWithIndent(com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite,java.lang.StringBuilder,int)>(r3, $r0, 0) 

(declare-const var3330!1 var3978)
(declare-const var1808!3 String)
(declare-const var2384 Int)
(assert true)
(define-const var308 String (toString/-2075883882 var1808!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var370_reflectivePrintWithIndent/1730795066=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite, java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3978=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite, var3330=r3, var3018=r1, var2367=null_type, var1808=$r0, var744=$r2, var370=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLiteToString, var2384=0, var308=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite=var3978, r3=var3330, r1=var3018, null_type=var2367, $r0=var1808, $r2=var744, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLiteToString=var370, 0=var2384, $r4=var308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("# ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLiteToString: void reflectivePrintWithIndent(com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageLite,java.lang.StringBuilder,int)>(r3, $r0, 0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1