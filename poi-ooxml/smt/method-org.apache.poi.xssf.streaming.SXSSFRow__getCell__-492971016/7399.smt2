(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort var1738 0)
(declare-sort var328 0)
(declare-sort var743 0)
(declare-sort var3742 0)
(declare-sort var959 0)
(declare-sort var3761 0)
(declare-sort var2462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var379_checkBounds/1585381082 (Int) void)
(declare-fun _cells/-719441109 (var379) var328)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3742_get/1088891777 (var3742 var743) var743)
(declare-fun cast-from-var328-to-var3742 (var328) var3742)
(declare-fun cast-from-Int-to-var743 (Int) var743)
(declare-fun cast-from-var743-to-var959 (var743) var959)
(declare-fun ordinal/-656313165 (var1738) Int)
(declare-fun var2462-init () var2462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var743) String)
(declare-fun cast-from-var1738-to-var743 (var1738) var743)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2462 String) void)
(declare-const null-var379 var379)
(declare-const null-Int Int)
(declare-const null-var1738 var1738)
(declare-const var3761-$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy (Array Int Int))
(declare-const var2013 var379) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFRow 
(assert (not (= var2013 null-var379)))
(declare-const var2735 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2735 null-Int)))
(declare-const var1965 var1738) ; Statement: r5 := @parameter1: org.apache.poi.ss.usermodel.Row$MissingCellPolicy 
(assert (not (= var1965 null-var1738)))
;(assert (var379_checkBounds/1585381082 var2735)) ; Statement: staticinvoke <org.apache.poi.xssf.streaming.SXSSFRow: void checkBounds(int)>(i0) 

(declare-const var2735!1 Int)
(define-const var45 var328 (_cells/-719441109 var2013)) ; Statement: $r1 = r0.<org.apache.poi.xssf.streaming.SXSSFRow: java.util.SortedMap _cells> 
(define-const var3300 Int (Int_valueOf/-1371140006 var2735!1)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3856 var743 (var3742_get/1088891777 (cast-from-var328-to-var3742 var45) (cast-from-Int-to-var743 var3300))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.SortedMap: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1214 var959 (cast-from-var743-to-var959 var3856)) ; Statement: r4 = (org.apache.poi.xssf.streaming.SXSSFCell) $r3 
(define-const var795 (Array Int Int) var3761-$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy) ; Statement: $r6 = <org.apache.poi.xssf.streaming.SXSSFRow$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy> 
(assert true)
(define-const var671 Int (ordinal/-656313165 var1965)) ; Statement: $i1 = virtualinvoke r5.<org.apache.poi.ss.usermodel.Row$MissingCellPolicy: int ordinal()>() 
(define-const var3169 Int (select var795 var671)) ; Statement: $i2 = $r6[$i1] 
 ; Statement: tableswitch($i2) {     case 1: goto return r4;     case 2: goto if r4 == null goto $z0 = 0;     case 3: goto if r4 != null goto $r16 = r4;     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3169 3)) (and (not (= var3169 2)) (and (not (= var3169 1)) true)))) ; Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional   
(define-const var2533 var2462 var2462-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var2571 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2571)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2571!1 String)
(assert (= var2571!1 ""))
(assert true)
(define-const var2213 String (append/672562846 var2571!1 "Illegal policy ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal policy ") 
(declare-const var2571!2 String)
(assert (= var2571!2 (str.++ var2571!1 "Illegal policy ")))
(assert true)
(define-const var670 String (append/-1031950772 var2213 (cast-from-var1738-to-var743 var1965))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2213!1 String)
(assert (str.prefixof var2213 var2213!1))
(assert true)
(define-const var3758 String (toString/-2075883882 var670)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2533 var3758)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var2533!1 var2462)
(declare-const var3758!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var379_checkBounds/1585381082=([int], void), _cells/-719441109=([org.apache.poi.xssf.streaming.SXSSFRow], java.util.SortedMap), Int_valueOf/-1371140006=([int], java.lang.Integer), var3742_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var328-to-var3742=([java.util.SortedMap], java.util.Map), cast-from-Int-to-var743=([java.lang.Integer], java.lang.Object), cast-from-var743-to-var959=([java.lang.Object], org.apache.poi.xssf.streaming.SXSSFCell), ordinal/-656313165=([org.apache.poi.ss.usermodel.Row$MissingCellPolicy], int), var2462-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1738-to-var743=([org.apache.poi.ss.usermodel.Row$MissingCellPolicy], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var379=org.apache.poi.xssf.streaming.SXSSFRow, var2013=r0, var2735=i0, var1738=org.apache.poi.ss.usermodel.Row$MissingCellPolicy, var1965=r5, var328=java.util.SortedMap, var45=$r1, var3300=$r2, var743=java.lang.Object, var3742=java.util.Map, var3856=$r3, var959=org.apache.poi.xssf.streaming.SXSSFCell, var1214=r4, var3761=org.apache.poi.xssf.streaming.SXSSFRow$1, var795=$r6, var671=$i1, var3169=$i2, var2462=java.lang.IllegalArgumentException, var2533=$r10, var2571=$r11, var2213=$r12, var670=$r13, var3758=$r14}
; {org.apache.poi.xssf.streaming.SXSSFRow=var379, r0=var2013, i0=var2735, org.apache.poi.ss.usermodel.Row$MissingCellPolicy=var1738, r5=var1965, java.util.SortedMap=var328, $r1=var45, $r2=var3300, java.lang.Object=var743, java.util.Map=var3742, $r3=var3856, org.apache.poi.xssf.streaming.SXSSFCell=var959, r4=var1214, org.apache.poi.xssf.streaming.SXSSFRow$1=var3761, $r6=var795, $i1=var671, $i2=var3169, java.lang.IllegalArgumentException=var2462, $r10=var2533, $r11=var2571, $r12=var2213, $r13=var670, $r14=var3758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFRow;	i0 := @parameter0: int;	r5 := @parameter1: org.apache.poi.ss.usermodel.Row$MissingCellPolicy;	staticinvoke <org.apache.poi.xssf.streaming.SXSSFRow: void checkBounds(int)>(i0);	$r1 = r0.<org.apache.poi.xssf.streaming.SXSSFRow: java.util.SortedMap _cells>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3 = interfaceinvoke $r1.<java.util.SortedMap: java.lang.Object get(java.lang.Object)>($r2);	r4 = (org.apache.poi.xssf.streaming.SXSSFCell) $r3;	$r6 = <org.apache.poi.xssf.streaming.SXSSFRow$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy>;	$i1 = virtualinvoke r5.<org.apache.poi.ss.usermodel.Row$MissingCellPolicy: int ordinal()>();	$i2 = $r6[$i1];	tableswitch($i2) {     case 1: goto return r4;     case 2: goto if r4 == null goto $z0 = 0;     case 3: goto if r4 != null goto $r16 = r4;     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal policy ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r10
;block_num 2