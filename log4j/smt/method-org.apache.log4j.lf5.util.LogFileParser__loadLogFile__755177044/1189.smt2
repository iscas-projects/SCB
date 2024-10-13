(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1405 0)
(declare-sort var2339 0)
(declare-sort var416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var416-init () var416)
(declare-fun <init>/-2000609440 (var416 var2339) void)
(declare-fun available/-913288930 (var416) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun read/-1580130659 (var416) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun close/591597944 (var416) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1405 var1405)
(declare-const null-var2339 var2339)
(declare-const var3785 var1405) ; Statement: r5 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var3785 null-var1405)))
(declare-const var997 var2339) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var997 null-var2339)))
(define-const var3564 var416 var416-init) ; Statement: $r7 = new java.io.BufferedInputStream 
(assert true)
;(assert (<init>/-2000609440 var3564 var997)) ; Statement: specialinvoke $r7.<java.io.BufferedInputStream: void <init>(java.io.InputStream)>(r1) 

(declare-const var3564!1 var416)
(declare-const var997!1 var2339)
(assert true)
(define-const var3486 Int (available/-913288930 var3564!1)) ; Statement: i0 = virtualinvoke $r7.<java.io.BufferedInputStream: int available()>() 
 ; Statement: if i0 <= 0 goto $r9 = new java.lang.StringBuffer 
(assert (<= var3486 0)) ; Cond: i0 <= 0 
(define-const var1338 String String-init) ; Statement: $r9 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1338 1024)) ; Statement: specialinvoke $r9.<java.lang.StringBuffer: void <init>(int)>(1024) 

(declare-const var1338!1 String)
(declare-const var2053 Int)
(define-const var821 String var1338!1) ; Statement: r6 = $r9 
(assert true) ; Non Conditional
(assert true)
(define-const var207 Int (read/-1580130659 var3564!1)) ; Statement: $i2 = virtualinvoke $r7.<java.io.BufferedInputStream: int read()>() 
(define-const var2758 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i2 == $i4 goto virtualinvoke $r7.<java.io.BufferedInputStream: void close()>() 
(assert (= var207 var2758)) ; Cond: $i2 == $i4 
(assert true)
;(assert (close/591597944 var3564!1)) ; Statement: virtualinvoke $r7.<java.io.BufferedInputStream: void close()>() 

(declare-const var3564!2 var416)
(assert true)
(define-const var222 String (toString/-222306083 var821)) ; Statement: $r3 = virtualinvoke r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var416-init=([], java.io.BufferedInputStream), <init>/-2000609440=([java.io.BufferedInputStream, java.io.InputStream], void), available/-913288930=([java.io.BufferedInputStream], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), read/-1580130659=([java.io.BufferedInputStream], int), cast-from-Int-to-Int=([int], int), close/591597944=([java.io.BufferedInputStream], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1405=org.apache.log4j.lf5.util.LogFileParser, var3785=r5, var2339=java.io.InputStream, var997=r1, var416=java.io.BufferedInputStream, var3564=$r7, var3486=i0, var1338=$r9, var2053=1024, var821=r6, var207=$i2, var2758=$i4, var222=$r3}
; {org.apache.log4j.lf5.util.LogFileParser=var1405, r5=var3785, java.io.InputStream=var2339, r1=var997, java.io.BufferedInputStream=var416, $r7=var3564, i0=var3486, $r9=var1338, 1024=var2053, r6=var821, $i2=var207, $i4=var2758, $r3=var222}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.log4j.lf5.util.LogFileParser;	r1 := @parameter0: java.io.InputStream;	$r7 = new java.io.BufferedInputStream;	specialinvoke $r7.<java.io.BufferedInputStream: void <init>(java.io.InputStream)>(r1);	i0 = virtualinvoke $r7.<java.io.BufferedInputStream: int available()>();	if i0 <= 0 goto $r9 = new java.lang.StringBuffer;	$r9 = new java.lang.StringBuffer;	specialinvoke $r9.<java.lang.StringBuffer: void <init>(int)>(1024);	r6 = $r9;	$i2 = virtualinvoke $r7.<java.io.BufferedInputStream: int read()>();	$i4 = (int) -1;	if $i2 == $i4 goto virtualinvoke $r7.<java.io.BufferedInputStream: void close()>();	virtualinvoke $r7.<java.io.BufferedInputStream: void close()>();	$r3 = virtualinvoke r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 4