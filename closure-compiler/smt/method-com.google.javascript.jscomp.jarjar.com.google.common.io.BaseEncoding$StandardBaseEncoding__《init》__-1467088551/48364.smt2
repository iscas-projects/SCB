(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2940 0)
(declare-sort var3123 0)
(declare-sort var25 0)
(declare-sort var1705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1705-init () var1705)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/898454513 (var1705 String (Array Int Int)) void)
(declare-fun <init>/451983494 (var2940 var1705 var25) void)
(declare-const null-var2940 var2940)
(declare-const null-String String)
(declare-const null-var25 var25)
(declare-const var2022 var2940) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding 
(assert (not (= var2022 null-var2940)))
(declare-const var681 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var681 null-String)))
(declare-const var1130 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1130 null-String)))
(declare-const var1886 var25) ; Statement: r5 := @parameter2: java.lang.Character 
(assert (not (= var1886 null-var25)))
(define-const var90 var1705 var1705-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet 
(assert true)
(define-const var2567 (Array Int Int) (toCharArray/415275702 var1130)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/898454513 var90 var681 var2567)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: void <init>(java.lang.String,char[])>(r2, $r4) 

(declare-const var90!1 var1705)
(declare-const var681!1 String)
(declare-const var2567!1 (Array Int Int))
(assert true)
;(assert (<init>/451983494 var2022 var90!1 var1886)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet,java.lang.Character)>($r1, r5) 

(declare-const var2022!1 var2940)
(declare-const var90!2 var1705)
(declare-const var1886!1 var25)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1705-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), toCharArray/415275702=([java.lang.String], char[]), <init>/898454513=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, java.lang.String, char[]], void), <init>/451983494=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, java.lang.Character], void)}
; {var2940=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, var2022=r0, var681=r2, var3123=null_type, var1130=r3, var25=java.lang.Character, var1886=r5, var1705=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var90=$r1, var2567=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding=var2940, r0=var2022, r2=var681, null_type=var3123, r3=var1130, java.lang.Character=var25, r5=var1886, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var1705, $r1=var90, $r4=var2567}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.Character;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet;	$r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: void <init>(java.lang.String,char[])>(r2, $r4);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet,java.lang.Character)>($r1, r5);	return
;block_num 1