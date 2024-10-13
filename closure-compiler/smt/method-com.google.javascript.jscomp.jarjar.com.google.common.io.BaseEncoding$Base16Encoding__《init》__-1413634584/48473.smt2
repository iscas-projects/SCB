(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var734 0)
(declare-sort var3761 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3820-init () var3820)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/898454513 (var3820 String (Array Int Int)) void)
(declare-fun <init>/368703909 (var734 var3820) void)
(declare-const null-var734 var734)
(declare-const null-String String)
(declare-const var3570 var734) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding 
(assert (not (= var3570 null-var734)))
(declare-const var1808 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1808 null-String)))
(declare-const var231 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var231 null-String)))
(define-const var856 var3820 var3820-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet 
(assert true)
(define-const var245 (Array Int Int) (toCharArray/415275702 var231)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/898454513 var856 var1808 var245)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: void <init>(java.lang.String,char[])>(r2, $r4) 

(declare-const var856!1 var3820)
(declare-const var1808!1 String)
(declare-const var245!1 (Array Int Int))
(assert true)
;(assert (<init>/368703909 var3570 var856!1)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet)>($r1) 

(declare-const var3570!1 var734)
(declare-const var856!2 var3820)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3820-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), toCharArray/415275702=([java.lang.String], char[]), <init>/898454513=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, java.lang.String, char[]], void), <init>/368703909=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet], void)}
; {var734=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding, var3570=r0, var1808=r2, var3761=null_type, var231=r3, var3820=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var856=$r1, var245=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding=var734, r0=var3570, r2=var1808, null_type=var3761, r3=var231, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var3820, $r1=var856, $r4=var245}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet;	$r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: void <init>(java.lang.String,char[])>(r2, $r4);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet)>($r1);	return
;block_num 1