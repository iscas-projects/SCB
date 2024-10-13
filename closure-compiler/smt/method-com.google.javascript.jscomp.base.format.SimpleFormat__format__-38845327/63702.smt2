(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1166 0)
(declare-sort var3885 0)
(declare-sort var343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var343-init () var343)
(declare-fun <init>/1766112489 (var343) void)
(declare-fun doFormat/371641933 (var343 String (Array Int var3885)) void)
(declare-fun out/-1920232736 (var343) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-__Array__Int__var3885__ (Array Int var3885))
(declare-const var1881 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1881 null-String)))
(declare-const var2323 (Array Int var3885)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var2323 null-__Array__Int__var3885__)))
(define-const var3536 var343 var343-init) ; Statement: $r0 = new com.google.javascript.jscomp.base.format.SimpleFormat 
(assert true)
;(assert (<init>/1766112489 var3536)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.base.format.SimpleFormat: void <init>()>() 

(declare-const var3536!1 var343)
(assert true)
;(assert (doFormat/371641933 var3536!1 var1881 var2323)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.base.format.SimpleFormat: void doFormat(java.lang.String,java.lang.Object[])>(r1, r2) 

(declare-const var3536!2 var343)
(declare-const var1881!1 String)
(declare-const var2323!1 (Array Int var3885))
(define-const var179 String (out/-1920232736 var3536!2)) ; Statement: $r3 = $r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.StringBuilder out> 
(assert true)
(define-const var1978 String (toString/-2075883882 var179)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var343-init=([], com.google.javascript.jscomp.base.format.SimpleFormat), <init>/1766112489=([com.google.javascript.jscomp.base.format.SimpleFormat], void), doFormat/371641933=([com.google.javascript.jscomp.base.format.SimpleFormat, java.lang.String, java.lang.Object[]], void), out/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1881=r1, var1166=null_type, var3885=java.lang.Object, var2323=r2, var343=com.google.javascript.jscomp.base.format.SimpleFormat, var3536=$r0, var179=$r3, var1978=$r4}
; {r1=var1881, null_type=var1166, java.lang.Object=var3885, r2=var2323, com.google.javascript.jscomp.base.format.SimpleFormat=var343, $r0=var3536, $r3=var179, $r4=var1978}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	$r0 = new com.google.javascript.jscomp.base.format.SimpleFormat;	specialinvoke $r0.<com.google.javascript.jscomp.base.format.SimpleFormat: void <init>()>();	virtualinvoke $r0.<com.google.javascript.jscomp.base.format.SimpleFormat: void doFormat(java.lang.String,java.lang.Object[])>(r1, r2);	$r3 = $r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.StringBuilder out>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1