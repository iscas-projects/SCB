(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3578 0)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3578_getGlobalTransactionId/100834271 (var3578) (Array Int Int))
(declare-fun var3578_getBranchQualifier/-1605455059 (var3578) (Array Int Int))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3578_getFormatId/-1122253570 (var3578) Int)
(declare-fun var3278_appendAsHex/526557045 (String Int) void)
(declare-const null-String String)
(declare-const null-var3578 var3578)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var475 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var475 null-String)))
(declare-const var3595 var3578) ; Statement: r0 := @parameter1: javax.transaction.xa.Xid 
(assert (not (= var3595 null-var3578)))
(define-const var3863 (Array Int Int) (var3578_getGlobalTransactionId/100834271 var3595)) ; Statement: r1 = interfaceinvoke r0.<javax.transaction.xa.Xid: byte[] getGlobalTransactionId()>() 
(define-const var3160 (Array Int Int) (var3578_getBranchQualifier/-1605455059 var3595)) ; Statement: r2 = interfaceinvoke r0.<javax.transaction.xa.Xid: byte[] getBranchQualifier()>() 
 ; Statement: if r1 == null goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(assert (= var3863 null-__Array__Int__Int__)) ; Cond: r1 == null 
(assert true)
;(assert (append/-1166366385 var475 44)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var475!1 String)
(assert (str.prefixof var475 var475!1))
 ; Statement: if r2 == null goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(assert (= var3160 null-__Array__Int__Int__)) ; Cond: r2 == null 
(assert true)
;(assert (append/-1166366385 var475!1 44)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var475!2 String)
(assert (str.prefixof var475!1 var475!2))
(define-const var3078 Int (var3578_getFormatId/-1122253570 var3595)) ; Statement: $i0 = interfaceinvoke r0.<javax.transaction.xa.Xid: int getFormatId()>() 
;(assert (var3278_appendAsHex/526557045 var475!2 var3078)) ; Statement: staticinvoke <com.mysql.cj.util.StringUtils: void appendAsHex(java.lang.StringBuilder,int)>(r3, $i0) 

(declare-const var475!3 String)
(declare-const var3078!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3578_getGlobalTransactionId/100834271=([javax.transaction.xa.Xid], byte[]), var3578_getBranchQualifier/-1605455059=([javax.transaction.xa.Xid], byte[]), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3578_getFormatId/-1122253570=([javax.transaction.xa.Xid], int), var3278_appendAsHex/526557045=([java.lang.StringBuilder, int], void)}
; {var475=r3, var3578=javax.transaction.xa.Xid, var3595=r0, var3863=r1, var3160=r2, var3078=$i0, var3278=com.mysql.cj.util.StringUtils}
; {r3=var475, javax.transaction.xa.Xid=var3578, r0=var3595, r1=var3863, r2=var3160, $i0=var3078, com.mysql.cj.util.StringUtils=var3278}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: javax.transaction.xa.Xid;	r1 = interfaceinvoke r0.<javax.transaction.xa.Xid: byte[] getGlobalTransactionId()>();	r2 = interfaceinvoke r0.<javax.transaction.xa.Xid: byte[] getBranchQualifier()>();	if r1 == null goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	if r2 == null goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$i0 = interfaceinvoke r0.<javax.transaction.xa.Xid: int getFormatId()>();	staticinvoke <com.mysql.cj.util.StringUtils: void appendAsHex(java.lang.StringBuilder,int)>(r3, $i0);	return
;block_num 3