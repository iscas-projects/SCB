(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1214 0)
(declare-sort var2005 0)
(declare-sort var3794 0)
(declare-sort var3223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2005-init () var2005)
(declare-fun arr-var3223-init () (Array Int var3223))
(declare-fun cast-from-String-to-var3223 (String) var3223)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3223 (Int) var3223)
(declare-fun String_format/-647569892 (var3794 String (Array Int var3223)) String)
(declare-fun <init>/875830710 (var2005 String) void)
(declare-const null-var1214 var1214)
(declare-const null-Int Int)
(declare-const var3794-ROOT var3794)
(declare-const null-__Array__Int__var3223__ (Array Int var3223))
(declare-const var1903 var1214) ; Statement: r5 := @this: org.apache.poi.xddf.usermodel.chart.XDDFChartData 
(assert (not (= var1903 null-var1214)))
(declare-const var3846 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3846 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var3846 0)) ; Cond: i0 < 0 
(define-const var60 var2005 var2005-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3230 var3794 var3794-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1142 (Array Int var3223) arr-var3223-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var1142!1 (Array Int var3223))
(assert (not (= var1142!1 null-__Array__Int__var3223__)))
(assert (= (select var1142!1 0) (cast-from-String-to-var3223 "removeSeries"))) ; Statement: $r1[0] = "removeSeries" 
(define-const var1331 Int (Int_valueOf/-1371140006 var3846)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1142!2 (Array Int var3223))
(assert (not (= var1142!2 null-__Array__Int__var3223__)))
(assert (= (select var1142!2 1) (cast-from-Int-to-var3223 var1331))) ; Statement: $r1[1] = $r3 
(define-const var2467 String (String_format/-647569892 var3230 "%s(%d): illegal index" var1142!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%s(%d): illegal index", $r1) 
(assert true)
;(assert (<init>/875830710 var60 var2467)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var60!1 var2005)
(declare-const var2467!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2005-init=([], java.lang.IllegalArgumentException), arr-var3223-init=([], java.lang.Object[]), cast-from-String-to-var3223=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3223=([java.lang.Integer], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1214=org.apache.poi.xddf.usermodel.chart.XDDFChartData, var1903=r5, var3846=i0, var2005=java.lang.IllegalArgumentException, var60=$r0, var3794=java.util.Locale, var3230=$r2, var3223=java.lang.Object, var1142=$r1, var1331=$r3, var2467=$r4}
; {org.apache.poi.xddf.usermodel.chart.XDDFChartData=var1214, r5=var1903, i0=var3846, java.lang.IllegalArgumentException=var2005, $r0=var60, java.util.Locale=var3794, $r2=var3230, java.lang.Object=var3223, $r1=var1142, $r3=var1331, $r4=var2467}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r5 := @this: org.apache.poi.xddf.usermodel.chart.XDDFChartData;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = newarray (java.lang.Object)[2];	$r1[0] = "removeSeries";	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%s(%d): illegal index", $r1);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2