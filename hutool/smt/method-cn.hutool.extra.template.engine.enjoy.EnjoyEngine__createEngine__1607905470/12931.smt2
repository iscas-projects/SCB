(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2016 0)
(declare-sort var2104 0)
(declare-sort var3775 0)
(declare-sort var3377 0)
(declare-sort var3257 0)
(declare-sort var3762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2104_fastSimpleUUID/641802843 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3775_create/-348538422 (String) var3775)
(declare-fun getCharsetStr/1569503175 (var2016) String)
(declare-fun setEncoding/368480585 (var3775 String) var3775)
(declare-fun getResourceMode/-1090718345 (var2016) var3257)
(declare-fun ordinal/-291641772 (var3762) Int)
(declare-fun cast-from-var3257-to-var3762 (var3257) var3762)
(declare-const null-var2016 var2016)
(declare-const var3377-$SwitchMap$cn$hutool$extra$template$TemplateConfig$ResourceMode (Array Int Int))
(declare-const var1456 var2016) ; Statement: r6 := @parameter0: cn.hutool.extra.template.TemplateConfig 
(assert (not (= var1456 null-var2016)))
(define-const var1263 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1263)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1263!1 String)
(assert (= var1263!1 ""))
(assert true)
(define-const var933 String (append/672562846 var1263!1 "Hutool-Enjoy-Engine-")) ; Statement: $r2 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hutool-Enjoy-Engine-") 
(declare-const var1263!2 String)
(assert (= var1263!2 (str.++ var1263!1 "Hutool-Enjoy-Engine-")))
(define-const var141 String var2104_fastSimpleUUID/641802843) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.IdUtil: java.lang.String fastSimpleUUID()>() 
(assert true)
(define-const var395 String (append/672562846 var933 var141)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var933!1 String)
(assert (= var933!1 (str.++ var933 var141)))
(assert true)
(define-const var2369 String (toString/-2075883882 var395)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3873 var3775 (var3775_create/-348538422 var2369)) ; Statement: r5 = staticinvoke <com.jfinal.template.Engine: com.jfinal.template.Engine create(java.lang.String)>($r4) 
(assert true)
(define-const var2687 String (getCharsetStr/1569503175 var1456)) ; Statement: $r7 = virtualinvoke r6.<cn.hutool.extra.template.TemplateConfig: java.lang.String getCharsetStr()>() 
(assert true)
;(assert (setEncoding/368480585 var3873 var2687)) ; Statement: virtualinvoke r5.<com.jfinal.template.Engine: com.jfinal.template.Engine setEncoding(java.lang.String)>($r7) 

(declare-const var3873!1 var3775)
(declare-const var2687!1 String)
(define-const var1224 (Array Int Int) var3377-$SwitchMap$cn$hutool$extra$template$TemplateConfig$ResourceMode) ; Statement: $r8 = <cn.hutool.extra.template.engine.enjoy.EnjoyEngine$1: int[] $SwitchMap$cn$hutool$extra$template$TemplateConfig$ResourceMode> 
(assert true)
(define-const var3384 var3257 (getResourceMode/-1090718345 var1456)) ; Statement: $r9 = virtualinvoke r6.<cn.hutool.extra.template.TemplateConfig: cn.hutool.extra.template.TemplateConfig$ResourceMode getResourceMode()>() 
(assert true)
(define-const var2080 Int (ordinal/-291641772 (cast-from-var3257-to-var3762 var3384))) ; Statement: $i0 = virtualinvoke $r9.<cn.hutool.extra.template.TemplateConfig$ResourceMode: int ordinal()>() 
(define-const var3424 Int (select var1224 var2080)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto goto [?= return r5];     case 2: goto virtualinvoke r5.<com.jfinal.template.Engine: com.jfinal.template.Engine setToClassPathSourceFactory()>();     case 3: goto $r19 = new com.jfinal.template.source.FileSourceFactory;     case 4: goto $r20 = new com.jfinal.template.source.FileSourceFactory;     default: goto return r5; } 
(assert (and (not (= var3424 4)) (and (not (= var3424 3)) (and (not (= var3424 2)) (and (not (= var3424 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2104_fastSimpleUUID/641802843=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3775_create/-348538422=([java.lang.String], com.jfinal.template.Engine), getCharsetStr/1569503175=([cn.hutool.extra.template.TemplateConfig], java.lang.String), setEncoding/368480585=([com.jfinal.template.Engine, java.lang.String], com.jfinal.template.Engine), getResourceMode/-1090718345=([cn.hutool.extra.template.TemplateConfig], cn.hutool.extra.template.TemplateConfig$ResourceMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3257-to-var3762=([cn.hutool.extra.template.TemplateConfig$ResourceMode], java.lang.Enum)}
; {var2016=cn.hutool.extra.template.TemplateConfig, var1456=r6, var1263=$r18, var933=$r2, var2104=cn.hutool.core.util.IdUtil, var141=$r1, var395=$r3, var2369=$r4, var3775=com.jfinal.template.Engine, var3873=r5, var2687=$r7, var3377=cn.hutool.extra.template.engine.enjoy.EnjoyEngine$1, var1224=$r8, var3257=cn.hutool.extra.template.TemplateConfig$ResourceMode, var3384=$r9, var3762=java.lang.Enum, var2080=$i0, var3424=$i1}
; {cn.hutool.extra.template.TemplateConfig=var2016, r6=var1456, $r18=var1263, $r2=var933, cn.hutool.core.util.IdUtil=var2104, $r1=var141, $r3=var395, $r4=var2369, com.jfinal.template.Engine=var3775, r5=var3873, $r7=var2687, cn.hutool.extra.template.engine.enjoy.EnjoyEngine$1=var3377, $r8=var1224, cn.hutool.extra.template.TemplateConfig$ResourceMode=var3257, $r9=var3384, java.lang.Enum=var3762, $i0=var2080, $i1=var3424}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: cn.hutool.extra.template.TemplateConfig;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hutool-Enjoy-Engine-");	$r1 = staticinvoke <cn.hutool.core.util.IdUtil: java.lang.String fastSimpleUUID()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r5 = staticinvoke <com.jfinal.template.Engine: com.jfinal.template.Engine create(java.lang.String)>($r4);	$r7 = virtualinvoke r6.<cn.hutool.extra.template.TemplateConfig: java.lang.String getCharsetStr()>();	virtualinvoke r5.<com.jfinal.template.Engine: com.jfinal.template.Engine setEncoding(java.lang.String)>($r7);	$r8 = <cn.hutool.extra.template.engine.enjoy.EnjoyEngine$1: int[] $SwitchMap$cn$hutool$extra$template$TemplateConfig$ResourceMode>;	$r9 = virtualinvoke r6.<cn.hutool.extra.template.TemplateConfig: cn.hutool.extra.template.TemplateConfig$ResourceMode getResourceMode()>();	$i0 = virtualinvoke $r9.<cn.hutool.extra.template.TemplateConfig$ResourceMode: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 1: goto goto [?= return r5];     case 2: goto virtualinvoke r5.<com.jfinal.template.Engine: com.jfinal.template.Engine setToClassPathSourceFactory()>();     case 3: goto $r19 = new com.jfinal.template.source.FileSourceFactory;     case 4: goto $r20 = new com.jfinal.template.source.FileSourceFactory;     default: goto return r5; };	return r5
;block_num 2