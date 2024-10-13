(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2344 0)
(declare-sort var3491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3491_isQuoted/1358852658 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var881 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var881 null-String)))
(define-const var1995 Bool (var3491_isQuoted/1358852658 var881)) ; Statement: $z0 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: boolean isQuoted(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var1995 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2336 Int (length/-134980193 var881)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1629 Int (- var2336 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 1 0) (>= (str.len var881) var1629) (>= var1629 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3491_isQuoted/1358852658=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var881=r0, var2344=null_type, var3491=org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint, var1995=$z0, var2336=$i0, var1629=$i1, var3494=$r1}
; {r0=var881, null_type=var2344, org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint=var3491, $z0=var1995, $i0=var2336, $i1=var1629, $r1=var3494}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: boolean isQuoted(java.lang.String)>(r0);	if $z0 == 0 goto return r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	return $r1
;block_num 2