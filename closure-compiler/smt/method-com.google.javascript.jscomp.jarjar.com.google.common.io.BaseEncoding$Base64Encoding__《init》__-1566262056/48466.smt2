(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3867 0)
(declare-sort var3939 0)
(declare-sort var3076 0)
(declare-sort var3634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3634-init () var3634)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/898454513 (var3634 String (Array Int Int)) void)
(declare-fun <init>/-480436377 (var3867 var3634 var3076) void)
(declare-const null-var3867 var3867)
(declare-const null-String String)
(declare-const null-var3076 var3076)
(declare-const var3318 var3867) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding 
(assert (not (= var3318 null-var3867)))
(declare-const var138 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var138 null-String)))
(declare-const var2585 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2585 null-String)))
(declare-const var1024 var3076) ; Statement: r5 := @parameter2: java.lang.Character 
(assert (not (= var1024 null-var3076)))
(define-const var1460 var3634 var3634-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet 
(assert true)
(define-const var953 (Array Int Int) (toCharArray/415275702 var2585)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/898454513 var1460 var138 var953)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: void <init>(java.lang.String,char[])>(r2, $r4) 

(declare-const var1460!1 var3634)
(declare-const var138!1 String)
(declare-const var953!1 (Array Int Int))
(assert true)
;(assert (<init>/-480436377 var3318 var1460!1 var1024)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet,java.lang.Character)>($r1, r5) 

(declare-const var3318!1 var3867)
(declare-const var1460!2 var3634)
(declare-const var1024!1 var3076)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3634-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), toCharArray/415275702=([java.lang.String], char[]), <init>/898454513=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, java.lang.String, char[]], void), <init>/-480436377=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, java.lang.Character], void)}
; {var3867=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding, var3318=r0, var138=r2, var3939=null_type, var2585=r3, var3076=java.lang.Character, var1024=r5, var3634=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var1460=$r1, var953=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding=var3867, r0=var3318, r2=var138, null_type=var3939, r3=var2585, java.lang.Character=var3076, r5=var1024, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var3634, $r1=var1460, $r4=var953}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.Character;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet;	$r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: void <init>(java.lang.String,char[])>(r2, $r4);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet,java.lang.Character)>($r1, r5);	return
;block_num 1