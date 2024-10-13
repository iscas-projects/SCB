(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var922 0)
(declare-sort var465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1192064430 (var922) var465)
(declare-fun fixSide/-1346839480 (var2498) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getWidth/-434025206 (var465) Float64)
(declare-fun scale/-1346839480 (var2498) Float32)
(declare-fun cast-from-Float32-to-Float64 (Float32) Float64)
(declare-fun getHeight/-2131505661 (var465) Float64)
(declare-fun setSize/-1575258980 (var465 Float64 Float64) void)
(declare-const null-var2498 var2498)
(declare-const null-var922 var922)
(declare-const null-var465 var465)
(declare-const var240 var2498) ; Statement: r2 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var240 null-var2498)))
(declare-const var2406 var922) ; Statement: r0 := @parameter0: org.apache.poi.xslf.util.MFProxy 
(assert (not (= var2406 null-var922)))
(declare-const var1589 var465) ; Statement: r4 := @parameter1: java.awt.geom.Dimension2D 
(assert (not (= var1589 null-var465)))
(assert true)
(define-const var1070 var465 (getSize/1192064430 var2406)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>() 
(define-const var2152 String (fixSide/-1346839480 var240)) ; Statement: r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide> 
(define-const var2732 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2868 Int (hashCode/-467973558 var2152)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; } 
(assert (and (not (= var2868 113126854)) (and (not (= var2868 109413500)) (and (not (= var2868 109250890)) (and (not (= var2868 3327612)) (and (not (= var2868 (- 1221029593))) true)))))) ; Intersect: Negate: Cond: $i0 == 113126854   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 109250890   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == -1221029593   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; } 
(assert (and (= var2732 4) (and (not (= var2732 3)) (and (not (= var2732 2)) (and (not (= var2732 1)) true))))) ; Intersect: Cond: b1 == 4  and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Non Conditional    
(assert true)
(define-const var1206 Float64 (getWidth/-434025206 var1070)) ; Statement: d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
 ; Statement: goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var35 Float64 (getWidth/-434025206 var1070)) ; Statement: $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(define-const var2795 Float32 (scale/-1346839480 var240)) ; Statement: $f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var315 Float64 (cast-from-Float32-to-Float64 var2795)) ; Statement: $d6 = (double) $f0 
(define-const var55 Float64 (fp.mul roundNearestTiesToEven var35 var315)) ; Statement: $d7 = $d5 * $d6 
(define-const var1668 Float64 (fp.div roundNearestTiesToEven var55 var1206)) ; Statement: $d8 = $d7 / d4 
(assert true)
(define-const var3354 Float64 (getHeight/-2131505661 var1070)) ; Statement: $d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var3001 Float32 (scale/-1346839480 var240)) ; Statement: $f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var189 Float64 (cast-from-Float32-to-Float64 var3001)) ; Statement: $d10 = (double) $f1 
(define-const var2539 Float64 (fp.mul roundNearestTiesToEven var3354 var189)) ; Statement: $d11 = $d9 * $d10 
(define-const var510 Float64 (fp.div roundNearestTiesToEven var2539 var1206)) ; Statement: $d12 = $d11 / d4 
(assert true)
;(assert (setSize/-1575258980 var1589 var1668 var510)) ; Statement: virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12) 

(declare-const var1589!1 var465)
(declare-const var1668!1 Float64)
(declare-const var510!1 Float64)
 ; Statement: return d4 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1192064430=([org.apache.poi.xslf.util.MFProxy], java.awt.geom.Dimension2D), fixSide/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), getWidth/-434025206=([java.awt.geom.Dimension2D], double), scale/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], float), cast-from-Float32-to-Float64=([float], double), getHeight/-2131505661=([java.awt.geom.Dimension2D], double), setSize/-1575258980=([java.awt.geom.Dimension2D, double, double], void)}
; {var2498=org.apache.poi.xslf.util.PPTX2PNG, var240=r2, var922=org.apache.poi.xslf.util.MFProxy, var2406=r0, var465=java.awt.geom.Dimension2D, var1589=r4, var1070=r1, var2152=r3, var2732=b1, var2868=$i0, var1206=d4, var35=$d5, var2795=$f0, var315=$d6, var55=$d7, var1668=$d8, var3354=$d9, var3001=$f1, var189=$d10, var2539=$d11, var510=$d12}
; {org.apache.poi.xslf.util.PPTX2PNG=var2498, r2=var240, org.apache.poi.xslf.util.MFProxy=var922, r0=var2406, java.awt.geom.Dimension2D=var465, r4=var1589, r1=var1070, r3=var2152, b1=var2732, $i0=var2868, d4=var1206, $d5=var35, $f0=var2795, $d6=var315, $d7=var55, $d8=var1668, $d9=var3354, $f1=var3001, $d10=var189, $d11=var2539, $d12=var510}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: org.apache.poi.xslf.util.MFProxy;	r4 := @parameter1: java.awt.geom.Dimension2D;	r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>();	r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide>;	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; };	tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; };	d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()];	$d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d6 = (double) $f0;	$d7 = $d5 * $d6;	$d8 = $d7 / d4;	$d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	$f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d10 = (double) $f1;	$d11 = $d9 * $d10;	$d12 = $d11 / d4;	virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12);	return d4
;block_num 4