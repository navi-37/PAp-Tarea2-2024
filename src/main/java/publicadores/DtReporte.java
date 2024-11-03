/**
 * DtReporte.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class DtReporte  implements java.io.Serializable {
    private java.lang.String barrio;

    private java.lang.String beneficiarios;

    private java.lang.String cantDist;

    public DtReporte() {
    }

    public DtReporte(
           java.lang.String barrio,
           java.lang.String beneficiarios,
           java.lang.String cantDist) {
           this.barrio = barrio;
           this.beneficiarios = beneficiarios;
           this.cantDist = cantDist;
    }


    /**
     * Gets the barrio value for this DtReporte.
     * 
     * @return barrio
     */
    public java.lang.String getBarrio() {
        return barrio;
    }


    /**
     * Sets the barrio value for this DtReporte.
     * 
     * @param barrio
     */
    public void setBarrio(java.lang.String barrio) {
        this.barrio = barrio;
    }


    /**
     * Gets the beneficiarios value for this DtReporte.
     * 
     * @return beneficiarios
     */
    public java.lang.String getBeneficiarios() {
        return beneficiarios;
    }


    /**
     * Sets the beneficiarios value for this DtReporte.
     * 
     * @param beneficiarios
     */
    public void setBeneficiarios(java.lang.String beneficiarios) {
        this.beneficiarios = beneficiarios;
    }


    /**
     * Gets the cantDist value for this DtReporte.
     * 
     * @return cantDist
     */
    public java.lang.String getCantDist() {
        return cantDist;
    }


    /**
     * Sets the cantDist value for this DtReporte.
     * 
     * @param cantDist
     */
    public void setCantDist(java.lang.String cantDist) {
        this.cantDist = cantDist;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtReporte)) return false;
        DtReporte other = (DtReporte) obj;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.barrio==null && other.getBarrio()==null) || 
             (this.barrio!=null &&
              this.barrio.equals(other.getBarrio()))) &&
            ((this.beneficiarios==null && other.getBeneficiarios()==null) || 
             (this.beneficiarios!=null &&
              this.beneficiarios.equals(other.getBeneficiarios()))) &&
            ((this.cantDist==null && other.getCantDist()==null) || 
             (this.cantDist!=null &&
              this.cantDist.equals(other.getCantDist())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getBarrio() != null) {
            _hashCode += getBarrio().hashCode();
        }
        if (getBeneficiarios() != null) {
            _hashCode += getBeneficiarios().hashCode();
        }
        if (getCantDist() != null) {
            _hashCode += getCantDist().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtReporte.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtReporte"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("barrio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "barrio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("beneficiarios");
        elemField.setXmlName(new javax.xml.namespace.QName("", "beneficiarios"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantDist");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantDist"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
