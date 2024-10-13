(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var1394 String "driver.") ; Statement: $r0 = "driver." 
(assert true)
(define-const var1404 Int (length/-134980193 var1394)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var1843 Int var1404) ; Statement: <org.apache.ibatis.datasource.unpooled.UnpooledDataSourceFactory: int DRIVER_PROPERTY_PREFIX_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1394=$r0, var1404=$i0, var1843=<org.apache.ibatis.datasource.unpooled.UnpooledDataSourceFactory: int DRIVER_PROPERTY_PREFIX_LENGTH>}
; {$r0=var1394, $i0=var1404, <org.apache.ibatis.datasource.unpooled.UnpooledDataSourceFactory: int DRIVER_PROPERTY_PREFIX_LENGTH>=var1843}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "driver.";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<org.apache.ibatis.datasource.unpooled.UnpooledDataSourceFactory: int DRIVER_PROPERTY_PREFIX_LENGTH> = $i0;	return
;block_num 1