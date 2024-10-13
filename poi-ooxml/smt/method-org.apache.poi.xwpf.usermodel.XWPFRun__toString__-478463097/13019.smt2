(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPhonetic/-1874376719 (var3666) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun text/1290944550 (var3666) String)
(declare-const null-var3666 var3666)
(declare-const var2295 var3666) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var2295 null-var3666)))
(assert true)
(define-const var1693 String (getPhonetic/-1874376719 var2295)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String getPhonetic()>() 
(assert true)
(define-const var2272 Int (length/-134980193 var1693)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>() 
(assert (<= var2272 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var999 String (text/1290944550 var2295)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getPhonetic/-1874376719=([org.apache.poi.xwpf.usermodel.XWPFRun], java.lang.String), length/-134980193=([java.lang.String], int), text/1290944550=([org.apache.poi.xwpf.usermodel.XWPFRun], java.lang.String)}
; {var3666=org.apache.poi.xwpf.usermodel.XWPFRun, var2295=r0, var1693=r1, var2272=$i0, var999=$r2}
; {org.apache.poi.xwpf.usermodel.XWPFRun=var3666, r0=var2295, r1=var1693, $i0=var2272, $r2=var999}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFRun;	r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String getPhonetic()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $r2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>();	$r2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>();	return $r2
;block_num 2