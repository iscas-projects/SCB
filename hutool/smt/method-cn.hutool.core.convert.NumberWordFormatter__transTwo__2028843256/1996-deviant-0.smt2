(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2937 0)
(declare-sort var3891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3891_parseFirst/1834896543 (String) String)
(declare-const null-String String)
(declare-const var3832 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var3832 null-String)))
(assert true)
(define-const var985 Int (length/-134980193 var3832)) ; Statement: $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 2 goto $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert (not (<= var985 2))) ; Negate: Cond: $i0 <= 2  
(assert (not (and true (and (>= 0 0) (>= (str.len var3832) 2) (>= 2 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3891_parseFirst/1834896543=([java.lang.String], java.lang.String)}
; {var3832=r9, var2937=null_type, var985=$i0, var1787=$z2, var3891=cn.hutool.core.convert.NumberWordFormatter, var855=r10}
; {r9=var3832, null_type=var2937, $i0=var985, $z2=var1787, cn.hutool.core.convert.NumberWordFormatter=var3891, r10=var855}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @parameter0: java.lang.String;	$i0 = virtualinvoke r9.<java.lang.String: int length()>();	if $i0 <= 2 goto $i1 = virtualinvoke r9.<java.lang.String: int length()>();	r9 = virtualinvoke r9.<java.lang.String: java.lang.String substring(int,int)>(0, 2);	goto [?= $z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("0")];	$z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("0");	if $z2 == 0 goto $z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("1");	r10 = staticinvoke <cn.hutool.core.convert.NumberWordFormatter: java.lang.String parseFirst(java.lang.String)>(r9);	goto [?= return r10];	return r10
;block_num 5