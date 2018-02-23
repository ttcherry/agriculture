package com.agriculture.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SysWeatherDisasterExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysWeatherDisasterExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIsNull() {
            addCriterion("crop_gp_id is null");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIsNotNull() {
            addCriterion("crop_gp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCropGpIdEqualTo(Integer value) {
            addCriterion("crop_gp_id =", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotEqualTo(Integer value) {
            addCriterion("crop_gp_id <>", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdGreaterThan(Integer value) {
            addCriterion("crop_gp_id >", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("crop_gp_id >=", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdLessThan(Integer value) {
            addCriterion("crop_gp_id <", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdLessThanOrEqualTo(Integer value) {
            addCriterion("crop_gp_id <=", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIn(List<Integer> values) {
            addCriterion("crop_gp_id in", values, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotIn(List<Integer> values) {
            addCriterion("crop_gp_id not in", values, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdBetween(Integer value1, Integer value2) {
            addCriterion("crop_gp_id between", value1, value2, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("crop_gp_id not between", value1, value2, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andProductIdIsNull() {
            addCriterion("product_id is null");
            return (Criteria) this;
        }

        public Criteria andProductIdIsNotNull() {
            addCriterion("product_id is not null");
            return (Criteria) this;
        }

        public Criteria andProductIdEqualTo(Integer value) {
            addCriterion("product_id =", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotEqualTo(Integer value) {
            addCriterion("product_id <>", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdGreaterThan(Integer value) {
            addCriterion("product_id >", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("product_id >=", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLessThan(Integer value) {
            addCriterion("product_id <", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLessThanOrEqualTo(Integer value) {
            addCriterion("product_id <=", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdIn(List<Integer> values) {
            addCriterion("product_id in", values, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotIn(List<Integer> values) {
            addCriterion("product_id not in", values, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdBetween(Integer value1, Integer value2) {
            addCriterion("product_id between", value1, value2, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotBetween(Integer value1, Integer value2) {
            addCriterion("product_id not between", value1, value2, "productId");
            return (Criteria) this;
        }

        public Criteria andDisasterNameIsNull() {
            addCriterion("disaster_name is null");
            return (Criteria) this;
        }

        public Criteria andDisasterNameIsNotNull() {
            addCriterion("disaster_name is not null");
            return (Criteria) this;
        }

        public Criteria andDisasterNameEqualTo(String value) {
            addCriterion("disaster_name =", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameNotEqualTo(String value) {
            addCriterion("disaster_name <>", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameGreaterThan(String value) {
            addCriterion("disaster_name >", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameGreaterThanOrEqualTo(String value) {
            addCriterion("disaster_name >=", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameLessThan(String value) {
            addCriterion("disaster_name <", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameLessThanOrEqualTo(String value) {
            addCriterion("disaster_name <=", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameLike(String value) {
            addCriterion("disaster_name like", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameNotLike(String value) {
            addCriterion("disaster_name not like", value, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameIn(List<String> values) {
            addCriterion("disaster_name in", values, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameNotIn(List<String> values) {
            addCriterion("disaster_name not in", values, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameBetween(String value1, String value2) {
            addCriterion("disaster_name between", value1, value2, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterNameNotBetween(String value1, String value2) {
            addCriterion("disaster_name not between", value1, value2, "disasterName");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeIsNull() {
            addCriterion("disaster_type is null");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeIsNotNull() {
            addCriterion("disaster_type is not null");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeEqualTo(String value) {
            addCriterion("disaster_type =", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeNotEqualTo(String value) {
            addCriterion("disaster_type <>", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeGreaterThan(String value) {
            addCriterion("disaster_type >", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeGreaterThanOrEqualTo(String value) {
            addCriterion("disaster_type >=", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeLessThan(String value) {
            addCriterion("disaster_type <", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeLessThanOrEqualTo(String value) {
            addCriterion("disaster_type <=", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeLike(String value) {
            addCriterion("disaster_type like", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeNotLike(String value) {
            addCriterion("disaster_type not like", value, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeIn(List<String> values) {
            addCriterion("disaster_type in", values, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeNotIn(List<String> values) {
            addCriterion("disaster_type not in", values, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeBetween(String value1, String value2) {
            addCriterion("disaster_type between", value1, value2, "disasterType");
            return (Criteria) this;
        }

        public Criteria andDisasterTypeNotBetween(String value1, String value2) {
            addCriterion("disaster_type not between", value1, value2, "disasterType");
            return (Criteria) this;
        }

        public Criteria andOccurConditionIsNull() {
            addCriterion("occur_condition is null");
            return (Criteria) this;
        }

        public Criteria andOccurConditionIsNotNull() {
            addCriterion("occur_condition is not null");
            return (Criteria) this;
        }

        public Criteria andOccurConditionEqualTo(String value) {
            addCriterion("occur_condition =", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionNotEqualTo(String value) {
            addCriterion("occur_condition <>", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionGreaterThan(String value) {
            addCriterion("occur_condition >", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionGreaterThanOrEqualTo(String value) {
            addCriterion("occur_condition >=", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionLessThan(String value) {
            addCriterion("occur_condition <", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionLessThanOrEqualTo(String value) {
            addCriterion("occur_condition <=", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionLike(String value) {
            addCriterion("occur_condition like", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionNotLike(String value) {
            addCriterion("occur_condition not like", value, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionIn(List<String> values) {
            addCriterion("occur_condition in", values, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionNotIn(List<String> values) {
            addCriterion("occur_condition not in", values, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionBetween(String value1, String value2) {
            addCriterion("occur_condition between", value1, value2, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andOccurConditionNotBetween(String value1, String value2) {
            addCriterion("occur_condition not between", value1, value2, "occurCondition");
            return (Criteria) this;
        }

        public Criteria andMeasureIsNull() {
            addCriterion("measure is null");
            return (Criteria) this;
        }

        public Criteria andMeasureIsNotNull() {
            addCriterion("measure is not null");
            return (Criteria) this;
        }

        public Criteria andMeasureEqualTo(String value) {
            addCriterion("measure =", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureNotEqualTo(String value) {
            addCriterion("measure <>", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureGreaterThan(String value) {
            addCriterion("measure >", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureGreaterThanOrEqualTo(String value) {
            addCriterion("measure >=", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureLessThan(String value) {
            addCriterion("measure <", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureLessThanOrEqualTo(String value) {
            addCriterion("measure <=", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureLike(String value) {
            addCriterion("measure like", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureNotLike(String value) {
            addCriterion("measure not like", value, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureIn(List<String> values) {
            addCriterion("measure in", values, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureNotIn(List<String> values) {
            addCriterion("measure not in", values, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureBetween(String value1, String value2) {
            addCriterion("measure between", value1, value2, "measure");
            return (Criteria) this;
        }

        public Criteria andMeasureNotBetween(String value1, String value2) {
            addCriterion("measure not between", value1, value2, "measure");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterionForJDBCDate("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterionForJDBCDate("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterionForJDBCDate("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIsNull() {
            addCriterion("update_user is null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIsNotNull() {
            addCriterion("update_user is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserEqualTo(String value) {
            addCriterion("update_user =", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotEqualTo(String value) {
            addCriterion("update_user <>", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserGreaterThan(String value) {
            addCriterion("update_user >", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserGreaterThanOrEqualTo(String value) {
            addCriterion("update_user >=", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLessThan(String value) {
            addCriterion("update_user <", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLessThanOrEqualTo(String value) {
            addCriterion("update_user <=", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLike(String value) {
            addCriterion("update_user like", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotLike(String value) {
            addCriterion("update_user not like", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIn(List<String> values) {
            addCriterion("update_user in", values, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotIn(List<String> values) {
            addCriterion("update_user not in", values, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserBetween(String value1, String value2) {
            addCriterion("update_user between", value1, value2, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotBetween(String value1, String value2) {
            addCriterion("update_user not between", value1, value2, "updateUser");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}