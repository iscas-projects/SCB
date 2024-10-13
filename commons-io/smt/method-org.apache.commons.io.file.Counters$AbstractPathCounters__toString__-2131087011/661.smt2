(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1457 0)
(declare-sort var750 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var750-init () (Array Int var750))
(declare-fun fileCounter/235640453 (var1457) var3023)
(declare-fun var3023_get/-123986100 (var3023) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var750 (Int) var750)
(declare-fun directoryCounter/235640453 (var1457) var3023)
(declare-fun byteCounter/235640453 (var1457) var3023)
(declare-fun String_format/1339386452 (String (Array Int var750)) String)
(declare-const null-var1457 var1457)
(declare-const null-__Array__Int__var750__ (Array Int var750))
(declare-const var47 var1457) ; Statement: r1 := @this: org.apache.commons.io.file.Counters$AbstractPathCounters 
(assert (not (= var47 null-var1457)))
(define-const var2675 (Array Int var750) arr-var750-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var1641 var3023 (fileCounter/235640453 var47)) ; Statement: $r2 = r1.<org.apache.commons.io.file.Counters$AbstractPathCounters: org.apache.commons.io.file.Counters$Counter fileCounter> 
(define-const var2317 Int (var3023_get/-123986100 var1641)) ; Statement: $l0 = interfaceinvoke $r2.<org.apache.commons.io.file.Counters$Counter: long get()>() 
(define-const var2732 Int (Int_valueOf/-1102777585 var2317)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var2675!1 (Array Int var750))
(assert (not (= var2675!1 null-__Array__Int__var750__)))
(assert (= (select var2675!1 0) (cast-from-Int-to-var750 var2732))) ; Statement: $r0[0] = $r3 
(define-const var2831 var3023 (directoryCounter/235640453 var47)) ; Statement: $r4 = r1.<org.apache.commons.io.file.Counters$AbstractPathCounters: org.apache.commons.io.file.Counters$Counter directoryCounter> 
(define-const var3623 Int (var3023_get/-123986100 var2831)) ; Statement: $l1 = interfaceinvoke $r4.<org.apache.commons.io.file.Counters$Counter: long get()>() 
(define-const var1171 Int (Int_valueOf/-1102777585 var3623)) ; Statement: $r5 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
(declare-const var2675!2 (Array Int var750))
(assert (not (= var2675!2 null-__Array__Int__var750__)))
(assert (= (select var2675!2 1) (cast-from-Int-to-var750 var1171))) ; Statement: $r0[1] = $r5 
(define-const var3590 var3023 (byteCounter/235640453 var47)) ; Statement: $r6 = r1.<org.apache.commons.io.file.Counters$AbstractPathCounters: org.apache.commons.io.file.Counters$Counter byteCounter> 
(define-const var2870 Int (var3023_get/-123986100 var3590)) ; Statement: $l2 = interfaceinvoke $r6.<org.apache.commons.io.file.Counters$Counter: long get()>() 
(define-const var721 Int (Int_valueOf/-1102777585 var2870)) ; Statement: $r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l2) 
(declare-const var2675!3 (Array Int var750))
(assert (not (= var2675!3 null-__Array__Int__var750__)))
(assert (= (select var2675!3 2) (cast-from-Int-to-var750 var721))) ; Statement: $r0[2] = $r7 
(define-const var3090 String (String_format/1339386452 "%,d files, %,d directories, %,d bytes" var2675!3)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%,d files, %,d directories, %,d bytes", $r0) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var750-init=([], java.lang.Object[]), fileCounter/235640453=([org.apache.commons.io.file.Counters$AbstractPathCounters], org.apache.commons.io.file.Counters$Counter), var3023_get/-123986100=([org.apache.commons.io.file.Counters$Counter], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var750=([java.lang.Long], java.lang.Object), directoryCounter/235640453=([org.apache.commons.io.file.Counters$AbstractPathCounters], org.apache.commons.io.file.Counters$Counter), byteCounter/235640453=([org.apache.commons.io.file.Counters$AbstractPathCounters], org.apache.commons.io.file.Counters$Counter), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1457=org.apache.commons.io.file.Counters$AbstractPathCounters, var47=r1, var750=java.lang.Object, var2675=$r0, var3023=org.apache.commons.io.file.Counters$Counter, var1641=$r2, var2317=$l0, var2732=$r3, var2831=$r4, var3623=$l1, var1171=$r5, var3590=$r6, var2870=$l2, var721=$r7, var3090=$r8}
; {org.apache.commons.io.file.Counters$AbstractPathCounters=var1457, r1=var47, java.lang.Object=var750, $r0=var2675, org.apache.commons.io.file.Counters$Counter=var3023, $r2=var1641, $l0=var2317, $r3=var2732, $r4=var2831, $l1=var3623, $r5=var1171, $r6=var3590, $l2=var2870, $r7=var721, $r8=var3090}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.commons.io.file.Counters$AbstractPathCounters;	$r0 = newarray (java.lang.Object)[3];	$r2 = r1.<org.apache.commons.io.file.Counters$AbstractPathCounters: org.apache.commons.io.file.Counters$Counter fileCounter>;	$l0 = interfaceinvoke $r2.<org.apache.commons.io.file.Counters$Counter: long get()>();	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[0] = $r3;	$r4 = r1.<org.apache.commons.io.file.Counters$AbstractPathCounters: org.apache.commons.io.file.Counters$Counter directoryCounter>;	$l1 = interfaceinvoke $r4.<org.apache.commons.io.file.Counters$Counter: long get()>();	$r5 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	$r0[1] = $r5;	$r6 = r1.<org.apache.commons.io.file.Counters$AbstractPathCounters: org.apache.commons.io.file.Counters$Counter byteCounter>;	$l2 = interfaceinvoke $r6.<org.apache.commons.io.file.Counters$Counter: long get()>();	$r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l2);	$r0[2] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%,d files, %,d directories, %,d bytes", $r0);	return $r8
;block_num 1