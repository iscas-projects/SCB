(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var787 0)
(declare-sort var1984 0)
(declare-sort var3134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3134-init () var3134)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/-1657349039 (var3134 Int) void)
(declare-const null-var1770 var1770)
(declare-const null-String String)
(declare-const null-var1984 var1984)
(declare-const var572 var1770) ; Statement: r2 := @this: freemarker.core.BuiltInsForStringsBasic$lengthBI 
(assert (not (= var572 null-var1770)))
(declare-const var301 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var301 null-String)))
(declare-const var3039 var1984) ; Statement: r3 := @parameter1: freemarker.core.Environment 
(assert (not (= var3039 null-var1984)))
(define-const var2143 var3134 var3134-init) ; Statement: $r0 = new freemarker.template.SimpleNumber 
(assert true)
(define-const var3720 Int (length/-134980193 var301)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/-1657349039 var2143 var3720)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleNumber: void <init>(int)>($i0) 

(declare-const var2143!1 var3134)
(declare-const var3720!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3134-init=([], freemarker.template.SimpleNumber), length/-134980193=([java.lang.String], int), <init>/-1657349039=([freemarker.template.SimpleNumber, int], void)}
; {var1770=freemarker.core.BuiltInsForStringsBasic$lengthBI, var572=r2, var301=r1, var787=null_type, var1984=freemarker.core.Environment, var3039=r3, var3134=freemarker.template.SimpleNumber, var2143=$r0, var3720=$i0}
; {freemarker.core.BuiltInsForStringsBasic$lengthBI=var1770, r2=var572, r1=var301, null_type=var787, freemarker.core.Environment=var1984, r3=var3039, freemarker.template.SimpleNumber=var3134, $r0=var2143, $i0=var3720}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: freemarker.core.BuiltInsForStringsBasic$lengthBI;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: freemarker.core.Environment;	$r0 = new freemarker.template.SimpleNumber;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r0.<freemarker.template.SimpleNumber: void <init>(int)>($i0);	return $r0
;block_num 1