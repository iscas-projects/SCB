(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var485 0)
(declare-sort var1163 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1192064430 (var1163) var3519)
(declare-fun fixSide/-1346839480 (var485) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getHeight/-2131505661 (var3519) Float64)
(declare-fun getWidth/-434025206 (var3519) Float64)
(declare-fun scale/-1346839480 (var485) Float32)
(declare-fun cast-from-Float32-to-Float64 (Float32) Float64)
(declare-fun setSize/-1575258980 (var3519 Float64 Float64) void)
(declare-const null-var485 var485)
(declare-const null-var1163 var1163)
(declare-const null-var3519 var3519)
(declare-const var2507 var485) ; Statement: r2 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var2507 null-var485)))
(declare-const var3104 var1163) ; Statement: r0 := @parameter0: org.apache.poi.xslf.util.MFProxy 
(assert (not (= var3104 null-var1163)))
(declare-const var1222 var3519) ; Statement: r4 := @parameter1: java.awt.geom.Dimension2D 
(assert (not (= var1222 null-var3519)))
(assert true)
(define-const var1673 var3519 (getSize/1192064430 var3104)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>() 
(define-const var1738 String (fixSide/-1346839480 var2507)) ; Statement: r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide> 
(define-const var2328 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var416 Int (hashCode/-467973558 var1738)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; } 
(assert (and (not (= var416 113126854)) (and (not (= var416 109413500)) (and (not (= var416 109250890)) (and (not (= var416 3327612)) (and (not (= var416 (- 1221029593))) true)))))) ; Intersect: Negate: Cond: $i0 == 113126854   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 109250890   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == -1221029593   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; } 
(assert (and (= var2328 5) (and (not (= var2328 4)) (and (not (= var2328 3)) (and (not (= var2328 2)) (and (not (= var2328 1)) true)))))) ; Intersect: Cond: b1 == 5  and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Non Conditional     
(assert true)
(define-const var1361 Float64 (getHeight/-2131505661 var1673)) ; Statement: d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3116 Float64 (getWidth/-434025206 var1673)) ; Statement: $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(define-const var217 Float32 (scale/-1346839480 var2507)) ; Statement: $f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var2908 Float64 (cast-from-Float32-to-Float64 var217)) ; Statement: $d6 = (double) $f0 
(define-const var2975 Float64 (fp.mul roundNearestTiesToEven var3116 var2908)) ; Statement: $d7 = $d5 * $d6 
(define-const var551 Float64 (fp.div roundNearestTiesToEven var2975 var1361)) ; Statement: $d8 = $d7 / d4 
(assert true)
(define-const var677 Float64 (getHeight/-2131505661 var1673)) ; Statement: $d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var3927 Float32 (scale/-1346839480 var2507)) ; Statement: $f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var1049 Float64 (cast-from-Float32-to-Float64 var3927)) ; Statement: $d10 = (double) $f1 
(define-const var854 Float64 (fp.mul roundNearestTiesToEven var677 var1049)) ; Statement: $d11 = $d9 * $d10 
(define-const var1621 Float64 (fp.div roundNearestTiesToEven var854 var1361)) ; Statement: $d12 = $d11 / d4 
(assert true)
;(assert (setSize/-1575258980 var1222 var551 var1621)) ; Statement: virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12) 

(declare-const var1222!1 var3519)
(declare-const var551!1 Float64)
(declare-const var1621!1 Float64)
 ; Statement: return d4 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1192064430=([org.apache.poi.xslf.util.MFProxy], java.awt.geom.Dimension2D), fixSide/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), getHeight/-2131505661=([java.awt.geom.Dimension2D], double), getWidth/-434025206=([java.awt.geom.Dimension2D], double), scale/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], float), cast-from-Float32-to-Float64=([float], double), setSize/-1575258980=([java.awt.geom.Dimension2D, double, double], void)}
; {var485=org.apache.poi.xslf.util.PPTX2PNG, var2507=r2, var1163=org.apache.poi.xslf.util.MFProxy, var3104=r0, var3519=java.awt.geom.Dimension2D, var1222=r4, var1673=r1, var1738=r3, var2328=b1, var416=$i0, var1361=d4, var3116=$d5, var217=$f0, var2908=$d6, var2975=$d7, var551=$d8, var677=$d9, var3927=$f1, var1049=$d10, var854=$d11, var1621=$d12}
; {org.apache.poi.xslf.util.PPTX2PNG=var485, r2=var2507, org.apache.poi.xslf.util.MFProxy=var1163, r0=var3104, java.awt.geom.Dimension2D=var3519, r4=var1222, r1=var1673, r3=var1738, b1=var2328, $i0=var416, d4=var1361, $d5=var3116, $f0=var217, $d6=var2908, $d7=var2975, $d8=var551, $d9=var677, $f1=var3927, $d10=var1049, $d11=var854, $d12=var1621}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: org.apache.poi.xslf.util.MFProxy;	r4 := @parameter1: java.awt.geom.Dimension2D;	r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>();	r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide>;	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; };	tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; };	d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	$d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d6 = (double) $f0;	$d7 = $d5 * $d6;	$d8 = $d7 / d4;	$d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	$f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d10 = (double) $f1;	$d11 = $d9 * $d10;	$d12 = $d11 / d4;	virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12);	return d4
;block_num 4