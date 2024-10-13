(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var208 0)
(declare-sort var3620 0)
(declare-sort var1776 0)
(declare-sort var2228 0)
(declare-sort var3794 0)
(declare-sort var187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun layout/-1806528418 (var2228) var1776)
(declare-fun cast-from-var208-to-var2228 (var208) var2228)
(declare-fun format/-1091420408 (var1776 var3620) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ignoresThrowable/466795560 (var1776) Bool)
(declare-fun getLevel/-1962581926 (var3620) var3794)
(declare-fun toInt/-1432665166 (var187) Int)
(declare-fun cast-from-var3794-to-var187 (var3794) var187)
(declare-fun _handle/1095524725 (var208) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun reportEvent/1372775025 (var208 Int String Int) void)
(declare-const null-var208 var208)
(declare-const null-var3620 var3620)
(declare-const var1791 var208) ; Statement: r1 := @this: org.apache.log4j.nt.NTEventLogAppender 
(assert (not (= var1791 null-var208)))
(declare-const var865 var3620) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var865 null-var3620)))
(define-const var181 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var181)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var181!1 String)
(define-const var2800 var1776 (layout/-1806528418 (cast-from-var208-to-var2228 var1791))) ; Statement: $r3 = r1.<org.apache.log4j.nt.NTEventLogAppender: org.apache.log4j.Layout layout> 
(assert true)
(define-const var917 String (format/-1091420408 var2800 var865)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.log4j.Layout: java.lang.String format(org.apache.log4j.spi.LoggingEvent)>(r2) 
(assert true)
;(assert (append/1560614132 var181!1 var917)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var181!2 String)
(assert (str.prefixof var181!1 var181!2))
(define-const var1529 var1776 (layout/-1806528418 (cast-from-var208-to-var2228 var1791))) ; Statement: $r5 = r1.<org.apache.log4j.nt.NTEventLogAppender: org.apache.log4j.Layout layout> 
(assert true)
(define-const var2766 Bool (ignoresThrowable/466795560 var1529)) ; Statement: $z0 = virtualinvoke $r5.<org.apache.log4j.Layout: boolean ignoresThrowable()>() 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert (= (ite var2766 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1229 var3794 (getLevel/-1962581926 var865)) ; Statement: $r8 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var3603 Int (toInt/-1432665166 (cast-from-var3794-to-var187 var1229))) ; Statement: $i2 = virtualinvoke $r8.<org.apache.log4j.Level: int toInt()>() 
(define-const var3316 Int (_handle/1095524725 var1791)) ; Statement: $i3 = r1.<org.apache.log4j.nt.NTEventLogAppender: int _handle> 
(assert true)
(define-const var2408 String (toString/-222306083 var181!2)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (reportEvent/1372775025 var1791 var3316 var2408 var3603)) ; Statement: specialinvoke r1.<org.apache.log4j.nt.NTEventLogAppender: void reportEvent(int,java.lang.String,int)>($i3, $r9, $i2) 

(declare-const var1791!1 var208)
(declare-const var3316!1 Int)
(declare-const var2408!1 String)
(declare-const var3603!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), layout/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.Layout), cast-from-var208-to-var2228=([org.apache.log4j.nt.NTEventLogAppender], org.apache.log4j.AppenderSkeleton), format/-1091420408=([org.apache.log4j.Layout, org.apache.log4j.spi.LoggingEvent], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), ignoresThrowable/466795560=([org.apache.log4j.Layout], boolean), getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), toInt/-1432665166=([org.apache.log4j.Priority], int), cast-from-var3794-to-var187=([org.apache.log4j.Level], org.apache.log4j.Priority), _handle/1095524725=([org.apache.log4j.nt.NTEventLogAppender], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String), reportEvent/1372775025=([org.apache.log4j.nt.NTEventLogAppender, int, java.lang.String, int], void)}
; {var208=org.apache.log4j.nt.NTEventLogAppender, var1791=r1, var3620=org.apache.log4j.spi.LoggingEvent, var865=r2, var181=$r0, var1776=org.apache.log4j.Layout, var2228=org.apache.log4j.AppenderSkeleton, var2800=$r3, var917=$r4, var1529=$r5, var2766=$z0, var3794=org.apache.log4j.Level, var1229=$r8, var187=org.apache.log4j.Priority, var3603=$i2, var3316=$i3, var2408=$r9}
; {org.apache.log4j.nt.NTEventLogAppender=var208, r1=var1791, org.apache.log4j.spi.LoggingEvent=var3620, r2=var865, $r0=var181, org.apache.log4j.Layout=var1776, org.apache.log4j.AppenderSkeleton=var2228, $r3=var2800, $r4=var917, $r5=var1529, $z0=var2766, org.apache.log4j.Level=var3794, $r8=var1229, org.apache.log4j.Priority=var187, $i2=var3603, $i3=var3316, $r9=var2408}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.nt.NTEventLogAppender;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = r1.<org.apache.log4j.nt.NTEventLogAppender: org.apache.log4j.Layout layout>;	$r4 = virtualinvoke $r3.<org.apache.log4j.Layout: java.lang.String format(org.apache.log4j.spi.LoggingEvent)>(r2);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r5 = r1.<org.apache.log4j.nt.NTEventLogAppender: org.apache.log4j.Layout layout>;	$z0 = virtualinvoke $r5.<org.apache.log4j.Layout: boolean ignoresThrowable()>();	if $z0 == 0 goto $r8 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r8 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$i2 = virtualinvoke $r8.<org.apache.log4j.Level: int toInt()>();	$i3 = r1.<org.apache.log4j.nt.NTEventLogAppender: int _handle>;	$r9 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke r1.<org.apache.log4j.nt.NTEventLogAppender: void reportEvent(int,java.lang.String,int)>($i3, $r9, $i2);	return
;block_num 2