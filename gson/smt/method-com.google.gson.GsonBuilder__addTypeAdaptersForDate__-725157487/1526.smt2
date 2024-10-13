(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3612 0)
(declare-sort var3255 0)
(declare-sort var295 0)
(declare-sort var3708 0)
(declare-sort var74 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3612 var3612)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var295 var295)
(declare-const var3708-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var74 var74)
(declare-const var3564 var3612) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var3564 null-var3612)))
(declare-const var3926 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3926 null-String)))
(declare-const var2553 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2553 null-Int)))
(declare-const var396 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var396 null-Int)))
(declare-const var37 var295) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var37 null-var295)))
(define-const var2054 Bool var3708-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var763 var74 null-var74) ; Statement: r10 = null 
(define-const var628 var74 null-var74) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var3926 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2461 String (trim/-847153721 var3926)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var34 Bool (isEmpty/-1285796103 var2461)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var34 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if i0 == 2 goto return 
(assert (not (= var2553 2))) ; Negate: Cond: i0 == 2  
 ; Statement: if i1 == 2 goto return 
(assert (= var396 2)) ; Cond: i1 == 2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3612=com.google.gson.GsonBuilder, var3564=r9, var3926=r0, var3255=null_type, var2553=i0, var396=i1, var295=java.util.List, var37=r2, var3708=com.google.gson.internal.sql.SqlTypesSupport, var2054=z0, var74=com.google.gson.TypeAdapterFactory, var763=r10, var628=r11, var2461=$r5, var34=$z1}
; {com.google.gson.GsonBuilder=var3612, r9=var3564, r0=var3926, null_type=var3255, i0=var2553, i1=var396, java.util.List=var295, r2=var37, com.google.gson.internal.sql.SqlTypesSupport=var3708, z0=var2054, com.google.gson.TypeAdapterFactory=var74, r10=var763, r11=var628, $r5=var2461, $z1=var34}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto (branch);	if i0 == 2 goto return;	if i1 == 2 goto return;	return
;block_num 5