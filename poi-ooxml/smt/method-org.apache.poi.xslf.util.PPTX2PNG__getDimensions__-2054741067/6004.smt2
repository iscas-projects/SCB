(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2088 0)
(declare-sort var3796 0)
(declare-sort var1689 0)
(declare-sort var2955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1192064430 (var3796) var1689)
(declare-fun fixSide/-1346839480 (var2088) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getWidth/-434025206 (var1689) Float64)
(declare-fun getHeight/-2131505661 (var1689) Float64)
(declare-fun var2955_min/-1342439462 (Float64 Float64) Float64)
(declare-fun scale/-1346839480 (var2088) Float32)
(declare-fun cast-from-Float32-to-Float64 (Float32) Float64)
(declare-fun setSize/-1575258980 (var1689 Float64 Float64) void)
(declare-const null-var2088 var2088)
(declare-const null-var3796 var3796)
(declare-const null-var1689 var1689)
(declare-const var2584 var2088) ; Statement: r2 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var2584 null-var2088)))
(declare-const var3059 var3796) ; Statement: r0 := @parameter0: org.apache.poi.xslf.util.MFProxy 
(assert (not (= var3059 null-var3796)))
(declare-const var2137 var1689) ; Statement: r4 := @parameter1: java.awt.geom.Dimension2D 
(assert (not (= var2137 null-var1689)))
(assert true)
(define-const var2980 var1689 (getSize/1192064430 var3059)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>() 
(define-const var379 String (fixSide/-1346839480 var2584)) ; Statement: r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide> 
(define-const var1118 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3413 Int (hashCode/-467973558 var379)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; } 
(assert (and (not (= var3413 113126854)) (and (not (= var3413 109413500)) (and (not (= var3413 109250890)) (and (not (= var3413 3327612)) (and (not (= var3413 (- 1221029593))) true)))))) ; Intersect: Negate: Cond: $i0 == 113126854   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 109250890   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == -1221029593   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; } 
(assert (and (= var1118 3) (and (not (= var1118 2)) (and (not (= var1118 1)) true)))) ; Intersect: Cond: b1 == 3  and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Non Conditional   
(assert true)
(define-const var1956 Float64 (getWidth/-434025206 var2980)) ; Statement: $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(assert true)
(define-const var3091 Float64 (getHeight/-2131505661 var2980)) ; Statement: $d0 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var464 Float64 (var2955_min/-1342439462 var1956 var3091)) ; Statement: d4 = staticinvoke <java.lang.Math: double min(double,double)>($d1, $d0) 
 ; Statement: goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2228 Float64 (getWidth/-434025206 var2980)) ; Statement: $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>() 
(define-const var2414 Float32 (scale/-1346839480 var2584)) ; Statement: $f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var766 Float64 (cast-from-Float32-to-Float64 var2414)) ; Statement: $d6 = (double) $f0 
(define-const var1859 Float64 (fp.mul roundNearestTiesToEven var2228 var766)) ; Statement: $d7 = $d5 * $d6 
(define-const var2704 Float64 (fp.div roundNearestTiesToEven var1859 var464)) ; Statement: $d8 = $d7 / d4 
(assert true)
(define-const var3001 Float64 (getHeight/-2131505661 var2980)) ; Statement: $d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var3941 Float32 (scale/-1346839480 var2584)) ; Statement: $f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale> 
(define-const var2422 Float64 (cast-from-Float32-to-Float64 var3941)) ; Statement: $d10 = (double) $f1 
(define-const var372 Float64 (fp.mul roundNearestTiesToEven var3001 var2422)) ; Statement: $d11 = $d9 * $d10 
(define-const var1037 Float64 (fp.div roundNearestTiesToEven var372 var464)) ; Statement: $d12 = $d11 / d4 
(assert true)
;(assert (setSize/-1575258980 var2137 var2704 var1037)) ; Statement: virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12) 

(declare-const var2137!1 var1689)
(declare-const var2704!1 Float64)
(declare-const var1037!1 Float64)
 ; Statement: return d4 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1192064430=([org.apache.poi.xslf.util.MFProxy], java.awt.geom.Dimension2D), fixSide/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), getWidth/-434025206=([java.awt.geom.Dimension2D], double), getHeight/-2131505661=([java.awt.geom.Dimension2D], double), var2955_min/-1342439462=([double, double], double), scale/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], float), cast-from-Float32-to-Float64=([float], double), setSize/-1575258980=([java.awt.geom.Dimension2D, double, double], void)}
; {var2088=org.apache.poi.xslf.util.PPTX2PNG, var2584=r2, var3796=org.apache.poi.xslf.util.MFProxy, var3059=r0, var1689=java.awt.geom.Dimension2D, var2137=r4, var2980=r1, var379=r3, var1118=b1, var3413=$i0, var1956=$d1, var3091=$d0, var2955=java.lang.Math, var464=d4, var2228=$d5, var2414=$f0, var766=$d6, var1859=$d7, var2704=$d8, var3001=$d9, var3941=$f1, var2422=$d10, var372=$d11, var1037=$d12}
; {org.apache.poi.xslf.util.PPTX2PNG=var2088, r2=var2584, org.apache.poi.xslf.util.MFProxy=var3796, r0=var3059, java.awt.geom.Dimension2D=var1689, r4=var2137, r1=var2980, r3=var379, b1=var1118, $i0=var3413, $d1=var1956, $d0=var3091, java.lang.Math=var2955, d4=var464, $d5=var2228, $f0=var2414, $d6=var766, $d7=var1859, $d8=var2704, $d9=var3001, $f1=var3941, $d10=var2422, $d11=var372, $d12=var1037}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: org.apache.poi.xslf.util.MFProxy;	r4 := @parameter1: java.awt.geom.Dimension2D;	r1 = virtualinvoke r0.<org.apache.poi.xslf.util.MFProxy: java.awt.geom.Dimension2D getSize()>();	r3 = r2.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fixSide>;	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1221029593: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("height");     case 3327612: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 109250890: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("scale");     case 109413500: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 113126854: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("width");     default: goto tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; }; };	tableswitch(b1) {     case 1: goto d4 = 1.0;     case 2: goto $d3 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 3: goto $d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 4: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();     case 5: goto d4 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();     default: goto d4 = 1.0; };	$d1 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$d0 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	d4 = staticinvoke <java.lang.Math: double min(double,double)>($d1, $d0);	goto [?= $d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>()];	$d5 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getWidth()>();	$f0 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d6 = (double) $f0;	$d7 = $d5 * $d6;	$d8 = $d7 / d4;	$d9 = virtualinvoke r1.<java.awt.geom.Dimension2D: double getHeight()>();	$f1 = r2.<org.apache.poi.xslf.util.PPTX2PNG: float scale>;	$d10 = (double) $f1;	$d11 = $d9 * $d10;	$d12 = $d11 / d4;	virtualinvoke r4.<java.awt.geom.Dimension2D: void setSize(double,double)>($d8, $d12);	return d4
;block_num 4