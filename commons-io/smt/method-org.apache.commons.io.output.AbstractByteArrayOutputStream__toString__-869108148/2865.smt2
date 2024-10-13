(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var740 0)
(declare-sort var3387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toByteArray/-172088756 (var740) (Array Int Int))
(declare-fun <init>/-193660533 (String (Array Int Int) String) void)
(declare-const null-var740 var740)
(declare-const null-String String)
(declare-const var3281 var740) ; Statement: r1 := @this: org.apache.commons.io.output.AbstractByteArrayOutputStream 
(assert (not (= var3281 null-var740)))
(declare-const var1993 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1993 null-String)))
(define-const var132 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var3276 (Array Int Int) (toByteArray/-172088756 var3281)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.io.output.AbstractByteArrayOutputStream: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/-193660533 var132 var3276 var1993)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.lang.String)>($r3, r2) 

(declare-const var132!1 String)
(declare-const var3276!1 (Array Int Int))
(declare-const var1993!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toByteArray/-172088756=([org.apache.commons.io.output.AbstractByteArrayOutputStream], byte[]), <init>/-193660533=([java.lang.String, byte[], java.lang.String], void)}
; {var740=org.apache.commons.io.output.AbstractByteArrayOutputStream, var3281=r1, var1993=r2, var3387=null_type, var132=$r0, var3276=$r3}
; {org.apache.commons.io.output.AbstractByteArrayOutputStream=var740, r1=var3281, r2=var1993, null_type=var3387, $r0=var132, $r3=var3276}
;seq <java.lang.String: void <init>(byte[],java.lang.String)>
;cnt {"<java.lang.String: void <init>(byte[],java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.io.output.AbstractByteArrayOutputStream;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<org.apache.commons.io.output.AbstractByteArrayOutputStream: byte[] toByteArray()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.lang.String)>($r3, r2);	return $r0
;block_num 1