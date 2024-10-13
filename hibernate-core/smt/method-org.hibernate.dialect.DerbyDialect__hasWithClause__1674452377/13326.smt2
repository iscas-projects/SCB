(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2354 0)
(declare-sort var1061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun startsWith/-154742961 ((s String) (prefix String) (toffset Int)) Bool (and (>= toffset 0) (>= (str.len s) toffset) (str.prefixof prefix (str.substr s toffset (- (str.len s) toffset)))))
(declare-const null-var2354 var2354)
(declare-const null-String String)
(declare-const var3584 var2354) ; Statement: r1 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var3584 null-var2354)))
(declare-const var838 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var838 null-String)))
(assert true)
(define-const var461 Int (length/-134980193 var838)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2394 Int (- var461 7)) ; Statement: $i1 = $i0 - 7 
(assert true)
(define-const var3987 Bool (startsWith/-154742961 var838 "with " var2394)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String,int)>("with ", $i1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), startsWith/-154742961=([java.lang.String, java.lang.String, int], boolean)}
; {var2354=org.hibernate.dialect.DerbyDialect, var3584=r1, var838=r0, var1061=null_type, var461=$i0, var2394=$i1, var3987=$z0}
; {org.hibernate.dialect.DerbyDialect=var2354, r1=var3584, r0=var838, null_type=var1061, $i0=var461, $i1=var2394, $z0=var3987}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean startsWith(java.lang.String,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean startsWith(java.lang.String,int)>": 1}
;stmts r1 := @this: org.hibernate.dialect.DerbyDialect;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 7;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String,int)>("with ", $i1);	return $z0
;block_num 1