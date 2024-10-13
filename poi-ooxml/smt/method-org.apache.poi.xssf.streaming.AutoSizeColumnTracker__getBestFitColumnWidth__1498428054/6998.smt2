(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1441 0)
(declare-sort var3442 0)
(declare-sort var3439 0)
(declare-sort var152 0)
(declare-sort var1103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maxColumnWidths/-537330368 (var1441) var3442)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3442_containsKey/1715618542 (var3442 var3439) Bool)
(declare-fun cast-from-Int-to-var3439 (Int) var3439)
(declare-fun trackAllColumns/-537330368 (var1441) Bool)
(declare-fun var152-init () var152)
(declare-fun <init>/-1092629202 (var152 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var152 String var1103) void)
(declare-fun cast-from-var152-to-var1103 (var152) var1103)
(declare-const null-var1441 var1441)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1578 var1441) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.AutoSizeColumnTracker 
(assert (not (= var1578 null-var1441)))
(declare-const var517 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var517 null-Int)))
(declare-const var741 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var741 null-Bool)))
(define-const var1724 var3442 (maxColumnWidths/-537330368 var1578)) ; Statement: $r1 = r0.<org.apache.poi.xssf.streaming.AutoSizeColumnTracker: java.util.Map maxColumnWidths> 
(define-const var3066 Int (Int_valueOf/-1371140006 var517)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1258 Bool (var3442_containsKey/1715618542 var1724 (cast-from-Int-to-var3439 var3066))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Map: boolean containsKey(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.apache.poi.xssf.streaming.AutoSizeColumnTracker: java.util.Map maxColumnWidths> 
(assert (not (not (= (ite var1258 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var425 Bool (trackAllColumns/-537330368 var1578)) ; Statement: $z2 = r0.<org.apache.poi.xssf.streaming.AutoSizeColumnTracker: boolean trackAllColumns> 
 ; Statement: if $z2 == 0 goto $r7 = new java.lang.IllegalStateException 
(assert (= (ite var425 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2820 var152 var152-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var2820 "Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called).")) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>("Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called).") 

(declare-const var2820!1 var152)
(declare-const var3029 String)
(define-const var423 var152 var152-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var1285 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1285)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1285!1 String)
(assert (= var1285!1 ""))
(assert true)
(define-const var287 String (append/672562846 var1285!1 "Cannot get best fit column width on untracked column ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get best fit column width on untracked column ") 
(declare-const var1285!2 String)
(assert (= var1285!2 (str.++ var1285!1 "Cannot get best fit column width on untracked column ")))
(assert true)
(define-const var2395 String (append/-1001720160 var287 var517)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var287!1 String)
(assert (str.prefixof var287 var287!1))
(assert true)
(define-const var2094 String (append/672562846 var2395 ". Either explicitly track the column or track all columns.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Either explicitly track the column or track all columns.") 
(declare-const var2395!1 String)
(assert (= var2395!1 (str.++ var2395 ". Either explicitly track the column or track all columns.")))
(assert true)
(define-const var324 String (toString/-2075883882 var2094)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var423 var324 (cast-from-var152-to-var1103 var2820!1))) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r7) 

(declare-const var423!1 var152)
(declare-const var324!1 String)
(declare-const var2820!2 var152)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {maxColumnWidths/-537330368=([org.apache.poi.xssf.streaming.AutoSizeColumnTracker], java.util.Map), Int_valueOf/-1371140006=([int], java.lang.Integer), var3442_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-Int-to-var3439=([java.lang.Integer], java.lang.Object), trackAllColumns/-537330368=([org.apache.poi.xssf.streaming.AutoSizeColumnTracker], boolean), var152-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var152-to-var1103=([java.lang.IllegalStateException], java.lang.Throwable)}
; {var1441=org.apache.poi.xssf.streaming.AutoSizeColumnTracker, var1578=r0, var517=i0, var741=z1, var3442=java.util.Map, var1724=$r1, var3066=$r2, var3439=java.lang.Object, var1258=$z0, var425=$z2, var152=java.lang.IllegalStateException, var2820=$r7, var3029="Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called).", var423=$r8, var1285=$r9, var287=$r10, var2395=$r11, var2094=$r12, var324=$r13, var1103=java.lang.Throwable}
; {org.apache.poi.xssf.streaming.AutoSizeColumnTracker=var1441, r0=var1578, i0=var517, z1=var741, java.util.Map=var3442, $r1=var1724, $r2=var3066, java.lang.Object=var3439, $z0=var1258, $z2=var425, java.lang.IllegalStateException=var152, $r7=var2820, "Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called)."=var3029, $r8=var423, $r9=var1285, $r10=var287, $r11=var2395, $r12=var2094, $r13=var324, java.lang.Throwable=var1103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.AutoSizeColumnTracker;	i0 := @parameter0: int;	z1 := @parameter1: boolean;	$r1 = r0.<org.apache.poi.xssf.streaming.AutoSizeColumnTracker: java.util.Map maxColumnWidths>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$z0 = interfaceinvoke $r1.<java.util.Map: boolean containsKey(java.lang.Object)>($r2);	if $z0 != 0 goto $r3 = r0.<org.apache.poi.xssf.streaming.AutoSizeColumnTracker: java.util.Map maxColumnWidths>;	$z2 = r0.<org.apache.poi.xssf.streaming.AutoSizeColumnTracker: boolean trackAllColumns>;	if $z2 == 0 goto $r7 = new java.lang.IllegalStateException;	$r7 = new java.lang.IllegalStateException;	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>("Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called).");	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get best fit column width on untracked column ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Either explicitly track the column or track all columns.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r7);	throw $r8
;block_num 3