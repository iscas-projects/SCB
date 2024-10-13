(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3231 0)
(declare-sort var880 0)
(declare-sort var2456 0)
(declare-sort var2679 0)
(declare-sort var1006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var880) String)
(declare-fun cast-from-var3231-to-var880 (var3231) var880)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3231_ramBytesUsed/1378950466 (var3231) Int)
(declare-fun var2456_humanReadableUnits/-561397419 (Int) String)
(declare-fun var2679_lineSeparator/-342590142 () String)
(declare-fun var3231_getChildResources/-1666314771 (var3231) var1006)
(declare-fun var1006_iterator/-1617794947 (var1006) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-String String)
(declare-const null-var3231 var3231)
(declare-const null-Int Int)
(declare-const var483 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var483 null-String)))
(declare-const var544 var3231) ; Statement: r1 := @parameter1: org.apache.lucene.util.Accountable 
(assert (not (= var544 null-var3231)))
(declare-const var3724 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3724 null-Int)))
(define-const var1243 Int 1) ; Statement: i3 = 1 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto (branch) 
(assert (>= var1243 var3724)) ; Cond: i3 >= i0 
 ; Statement: if i0 <= 0 goto $r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert (<= var3724 0)) ; Cond: i0 <= 0 
(assert true)
(define-const var649 String (toString/-522406933 (cast-from-var3231-to-var880 var544))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var483 var649)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var483!1 String)
(assert (= var483!1 (str.++ var483 var649)))
(assert true)
;(assert (append/672562846 var483!1 ": ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var483!2 String)
(assert (= var483!2 (str.++ var483!1 ": ")))
(define-const var3929 Int (var3231_ramBytesUsed/1378950466 var544)) ; Statement: $l1 = interfaceinvoke r1.<org.apache.lucene.util.Accountable: long ramBytesUsed()>() 
(define-const var304 String (var2456_humanReadableUnits/-561397419 var3929)) ; Statement: $r3 = staticinvoke <org.apache.lucene.util.RamUsageEstimator: java.lang.String humanReadableUnits(long)>($l1) 
(assert true)
;(assert (append/672562846 var483!2 var304)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var483!3 String)
(assert (= var483!3 (str.++ var483!2 var304)))
(define-const var30 String var2679_lineSeparator/-342590142) ; Statement: $r4 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
;(assert (append/672562846 var483!3 var30)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var483!4 String)
(assert (= var483!4 (str.++ var483!3 var30)))
(define-const var171 var1006 (var3231_getChildResources/-1666314771 var544)) ; Statement: $r5 = interfaceinvoke r1.<org.apache.lucene.util.Accountable: java.util.Collection getChildResources()>() 
(define-const var3602 Iterator (var1006_iterator/-1617794947 var171)) ; Statement: $r8 = interfaceinvoke $r5.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var877 Bool (Iterator_hasNext/-1669924200 var3602)) ; Statement: $z0 = interfaceinvoke $r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var877 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3231-to-var880=([org.apache.lucene.util.Accountable], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3231_ramBytesUsed/1378950466=([org.apache.lucene.util.Accountable], long), var2456_humanReadableUnits/-561397419=([long], java.lang.String), var2679_lineSeparator/-342590142=([], java.lang.String), var3231_getChildResources/-1666314771=([org.apache.lucene.util.Accountable], java.util.Collection), var1006_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var483=r0, var3231=org.apache.lucene.util.Accountable, var544=r1, var3724=i0, var1243=i3, var880=java.lang.Object, var649=$r2, var3929=$l1, var2456=org.apache.lucene.util.RamUsageEstimator, var304=$r3, var2679=java.lang.System, var30=$r4, var1006=java.util.Collection, var171=$r5, var3602=$r8, var877=$z0}
; {r0=var483, org.apache.lucene.util.Accountable=var3231, r1=var544, i0=var3724, i3=var1243, java.lang.Object=var880, $r2=var649, $l1=var3929, org.apache.lucene.util.RamUsageEstimator=var2456, $r3=var304, java.lang.System=var2679, $r4=var30, java.util.Collection=var1006, $r5=var171, $r8=var3602, $z0=var877}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.apache.lucene.util.Accountable;	i0 := @parameter2: int;	i3 = 1;	if i3 >= i0 goto (branch);	if i0 <= 0 goto $r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$l1 = interfaceinvoke r1.<org.apache.lucene.util.Accountable: long ramBytesUsed()>();	$r3 = staticinvoke <org.apache.lucene.util.RamUsageEstimator: java.lang.String humanReadableUnits(long)>($l1);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = interfaceinvoke r1.<org.apache.lucene.util.Accountable: java.util.Collection getChildResources()>();	$r8 = interfaceinvoke $r5.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke $r8.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return r0;	return r0
;block_num 6