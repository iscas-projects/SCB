(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2058 0)
(declare-sort var2110 0)
(declare-sort var1690 0)
(declare-sort var706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1192064430 (var2110) var1690)
(declare-fun fixSide/-1346839480 (var2058) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getWidth/-434025206 (var1690) Float64)
(declare-fun getHeight/-2131505661 (var1690) Float64)
(declare-fun var706_max/-1307600148 (Float64 Float64) Float64)
(declare-fun scale/-1346839480 (var2058) Float32)
(declare-fun cast-from-Float32-to-Float64 (Float32) Float64)
(declare-fun setSize/-1575258980 (var1690 Float64 Float64) void)
(declare-const null-var2058 var2058)
(declare-const null-var2110 var2110)
(declare-const null-var1690 var1690)
(declare-const var588 var2058) ; Statement: r2 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var588 null-var2058)))
(declare-const var2317 var2110) ; Statement: r0 := @parameter0: org.apache.poi.xslf.util.MFProxy 
(assert (not (= var2317 null-var2110)))
(declare-const var3454 var1690) ; Statement: r4 := @parameter1: java.awt.geom.Dimension2D 
(assert (not (= var3454 null-var1690)))
(assert true)
(define-const var419 var1690 (getSize/1192064430 var2317)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>() 
(define-const var2914 String (fixSide/-1346839480 var588)) ; Statement: r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide> 
(define-const var2262 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2842 Int (hashCode/-467973558 var2914)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; } 
(assert (and (not (= var2842 113126854)) (and (not (= var2842 109413500)) (and (not (= var2842 109250890)) (and (not (= var2842 3327612)) (and (not (= var2842 (- 1221029593))) true)))))) ; Intersect: Negate: Cond: $i0 == 113126854   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 109250890   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == -1221029593   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; } 
(assert (and (= var2262 2) (and (not (= var2262 1)) true))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Non Conditional  
(assert true)
(define-const var2503 Float64 (getWidth/-434025206 var419)) ; Statement: $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(assert true)
(define-const var2469 Float64 (getHeight/-2131505661 var419)) ; Statement: $d2 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var3064 Float64 (var706_max/-1307600148 var2503 var2469)) ; Statement: d4 = staticinvoke <java.lang.Math: double max(double,double)>($d3, $d2) 
 ; Statement: goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var217 Float64 (getWidth/-434025206 var419)) ; Statement: $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(define-const var1614 Float32 (scale/-1346839480 var588)) ; Statement: $f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var1687 Float64 (cast-from-Float32-to-Float64 var1614)) ; Statement: $d6 = (double) $f0 
(define-const var2547 Float64 (fp.mul roundNearestTiesToEven var217 var1687)) ; Statement: $d7 = $d5 * $d6 
(define-const var820 Float64 (fp.div roundNearestTiesToEven var2547 var3064)) ; Statement: $d8 = $d7 / d4 
(assert true)
(define-const var479 Float64 (getHeight/-2131505661 var419)) ; Statement: $d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var1138 Float32 (scale/-1346839480 var588)) ; Statement: $f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var3443 Float64 (cast-from-Float32-to-Float64 var1138)) ; Statement: $d10 = (double) $f1 
(define-const var3261 Float64 (fp.mul roundNearestTiesToEven var479 var3443)) ; Statement: $d11 = $d9 * $d10 
(define-const var1950 Float64 (fp.div roundNearestTiesToEven var3261 var3064)) ; Statement: $d12 = $d11 / d4 
(assert true)
;(assert (setSize/-1575258980 var3454 var820 var1950)) ; Statement: virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12) 

(declare-const var3454!1 var1690)
(declare-const var820!1 Float64)
(declare-const var1950!1 Float64)
 ; Statement: return d4 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1192064430=([org.apache.poi.xslf.util.MFProxy], java.awt.geom.Dimension2D), fixSide/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), getWidth/-434025206=([java.awt.geom.Dimension2D], double), getHeight/-2131505661=([java.awt.geom.Dimension2D], double), var706_max/-1307600148=([double, double], double), scale/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], float), cast-from-Float32-to-Float64=([float], double), setSize/-1575258980=([java.awt.geom.Dimension2D, double, double], void)}
; {var2058=org.apache.poi.xslf.util.PPTX2PNG, var588=r2, var2110=org.apache.poi.xslf.util.MFProxy, var2317=r0, var1690=java.awt.geom.Dimension2D, var3454=r4, var419=r1, var2914=r3, var2262=b1, var2842=$i0, var2503=$d3, var2469=$d2, var706=java.lang.Math, var3064=d4, var217=$d5, var1614=$f0, var1687=$d6, var2547=$d7, var820=$d8, var479=$d9, var1138=$f1, var3443=$d10, var3261=$d11, var1950=$d12}
; {org.apache.poi.xslf.util.PPTX2PNG=var2058, r2=var588, org.apache.poi.xslf.util.MFProxy=var2110, r0=var2317, java.awt.geom.Dimension2D=var1690, r4=var3454, r1=var419, r3=var2914, b1=var2262, $i0=var2842, $d3=var2503, $d2=var2469, java.lang.Math=var706, d4=var3064, $d5=var217, $f0=var1614, $d6=var1687, $d7=var2547, $d8=var820, $d9=var479, $f1=var1138, $d10=var3443, $d11=var3261, $d12=var1950}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: org.apache.poi.xslf.util.MFProxy;	r4 := @parameter1: java.awt.geom.Dimension2D;	r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>();	r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide>;	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; };	tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; };	$d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$d2 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	d4 = staticinvoke <java.lang.Math: double max(double,double)>($d3, $d2);	goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()];	$d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d6 = (double) $f0;	$d7 = $d5 * $d6;	$d8 = $d7 / d4;	$d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	$f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d10 = (double) $f1;	$d11 = $d9 * $d10;	$d12 = $d11 / d4;	virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12);	return d4
;block_num 4