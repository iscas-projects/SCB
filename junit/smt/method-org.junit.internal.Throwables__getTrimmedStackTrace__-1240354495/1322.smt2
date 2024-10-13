(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var892 0)
(declare-sort var802 0)
(declare-sort var552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var552_getTrimmedStackTraceLines/1008563017 (var892) var802)
(declare-fun var802_isEmpty/-153543822 (var802) Bool)
(declare-fun String-init () String)
(declare-fun toString/-1112415476 (var892) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var552_appendStackTraceLines/-969650523 (var802 String) void)
(declare-fun var552_getCauseStackTraceLines/-1947863382 (var892) var802)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var892 var892)
(declare-const var3178 var892) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var3178 null-var892)))
(define-const var2870 var802 (var552_getTrimmedStackTraceLines/1008563017 var3178)) ; Statement: r1 = staticinvoke <org.junit.internal.Throwables: java.util.List getTrimmedStackTraceLines(java.lang.Throwable)>(r0) 
(define-const var885 Bool (var802_isEmpty/-153543822 var2870)) ; Statement: $z0 = interfaceinvoke r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var885 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2469 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var334 String (toString/-1112415476 var3178)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Throwable: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2469 var334)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var2469!1 String)
(assert (= var2469!1 var334))
;(assert (var552_appendStackTraceLines/-969650523 var2870 var2469!1)) ; Statement: staticinvoke <org.junit.internal.Throwables: void appendStackTraceLines(java.util.List,java.lang.StringBuilder)>(r1, $r2) 

(declare-const var2870!1 var802)
(declare-const var2469!2 String)
(define-const var3352 var802 (var552_getCauseStackTraceLines/-1947863382 var3178)) ; Statement: $r4 = staticinvoke <org.junit.internal.Throwables: java.util.List getCauseStackTraceLines(java.lang.Throwable)>(r0) 
;(assert (var552_appendStackTraceLines/-969650523 var3352 var2469!2)) ; Statement: staticinvoke <org.junit.internal.Throwables: void appendStackTraceLines(java.util.List,java.lang.StringBuilder)>($r4, $r2) 

(declare-const var3352!1 var802)
(declare-const var2469!3 String)
(assert true)
(define-const var1258 String (toString/-2075883882 var2469!3)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var552_getTrimmedStackTraceLines/1008563017=([java.lang.Throwable], java.util.List), var802_isEmpty/-153543822=([java.util.List], boolean), String-init=([], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var552_appendStackTraceLines/-969650523=([java.util.List, java.lang.StringBuilder], void), var552_getCauseStackTraceLines/-1947863382=([java.lang.Throwable], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var892=java.lang.Throwable, var3178=r0, var802=java.util.List, var552=org.junit.internal.Throwables, var2870=r1, var885=$z0, var2469=$r2, var334=$r3, var3352=$r4, var1258=$r5}
; {java.lang.Throwable=var892, r0=var3178, java.util.List=var802, org.junit.internal.Throwables=var552, r1=var2870, $z0=var885, $r2=var2469, $r3=var334, $r4=var3352, $r5=var1258}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Throwable;	r1 = staticinvoke <org.junit.internal.Throwables: java.util.List getTrimmedStackTraceLines(java.lang.Throwable)>(r0);	$z0 = interfaceinvoke r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.Throwable: java.lang.String toString()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	staticinvoke <org.junit.internal.Throwables: void appendStackTraceLines(java.util.List,java.lang.StringBuilder)>(r1, $r2);	$r4 = staticinvoke <org.junit.internal.Throwables: java.util.List getCauseStackTraceLines(java.lang.Throwable)>(r0);	staticinvoke <org.junit.internal.Throwables: void appendStackTraceLines(java.util.List,java.lang.StringBuilder)>($r4, $r2);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2