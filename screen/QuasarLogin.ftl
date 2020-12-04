<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Moqui</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons'>
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/quasar@1.14.5/dist/quasar.min.css'>
  <style type="text/css">
    .my-card {
      margin: 0 auto;
      max-width: 500px;
    }
  </style>
</head>
<body>

<div id="q-app">
  <div class="window-height window-width row justify-center items-center">
    <q-card class="my-card">
      <q-card-section>
        <div class="text-h6 text-center">Moqui ERP System</div>
      </q-card-section>
      <q-tab-panels v-model="tab" animated style="min-height: 350px">
        <q-tab-panel name="one">
          <form @submit.prevent="submitForm" class="q-px-sm">
            <div class="row q-mb-md">
              <q-banner class="bg-grey-3 col">
                <template v-slot:avatar>
                  <q-icon name="account_circle" color="primary" />
                </template>
                <div class="text-h6">Login</div>
              </q-banner>
            </div>
            <div class="row q-mb-md">
              <q-input
                  v-model="formData.email"
                  :rules="[ val => isValidEmailAddress(val) || 'Please enter a valid email address.']"
                  ref="email"
                  lazy-rules
                  outlined
                  class="col"
                  label="Email"
                  stack-label />
            </div>
            <div class="row q-mb-md">
              <q-input
                  v-model="formData.password"
                  :rules="[ val => val.length >= 6 || 'Please enter at least 6 characters.']"
                  ref="password"
                  lazy-rules
                  type="password"
                  outlined
                  class="col"
                  label="Password"
                  stack-label />
            </div>
            <div class="row justify-end">
              <q-btn
                  color="primary"
                  label="Login"
                  type="submit" />
            </div>
          </form>
        </q-tab-panel>

        <q-tab-panel name="two">
          <form @submit.prevent="submitForm" class="q-px-sm">
            <div class="row q-mb-md">
              <q-banner class="bg-grey-3 col">
                <template v-slot:avatar>
                  <q-icon name="account_circle" color="primary" />
                </template>
                <div class="text-h6">Reset Password</div>
              </q-banner>
            </div>
            <div class="row q-mb-md">
              <q-input
                  v-model="formData.email"
                  :rules="[ val => isValidEmailAddress(val) || 'Please enter a valid email address.']"
                  ref="email"
                  lazy-rules
                  outlined
                  class="col"
                  label="Email"
                  stack-label />
            </div>

            <div class="row justify-end">
<!--              <q-space />-->
              <q-btn
                  color="primary"
                  label="Reset & Email Password"
                  type="submit" />
            </div>
          </form>
        </q-tab-panel>
        <q-tab-panel name="three">
          <form @submit.prevent="submitForm" class="q-px-sm">
            <div class="row q-mb-md">
              <q-banner class="bg-grey-3 col">
                <template v-slot:avatar>
                  <q-icon name="account_circle" color="primary" />
                </template>
                <div class="text-h6">Change Password</div>
              </q-banner>
            </div>
            <div class="row ">
              <q-input
                  v-model="formData.email"
                  :rules="[ val => isValidEmailAddress(val) || 'Please enter a valid email address.']"
                  ref="email"
                  lazy-rules
                  outlined
                  class="col"
                  label="Email"
                  stack-label />
            </div>
            <div class="row">
              <q-input
                  v-model="formData.password"
                  :rules="[ val => val.length >= 6 || 'Please enter at least 6 characters.']"
                  ref="password"
                  lazy-rules
                  type="password"
                  outlined
                  class="col"
                  label="Old Password"
                  stack-label />
            </div>
            <div class="row ">
              <q-input
                  v-model="formData.password"
                  :rules="[ val => val.length >= 6 || 'Please enter at least 6 characters.']"
                  ref="password"
                  lazy-rules
                  type="password"
                  outlined
                  class="col"
                  label="New Password"
                  stack-label />
            </div>
            <div class="row ">
              <q-input
                  v-model="formData.password"
                  :rules="[ val => val.length >= 6 || 'Please enter at least 6 characters.']"
                  ref="password"
                  lazy-rules
                  type="password"
                  outlined
                  class="col"
                  label="New Password Verify"
                  stack-label />
            </div>
            <div class="row justify-end">
              <q-btn
                  color="primary"
                  label="Change Password"
                  type="submit" />
            </div>
          </form>
        </q-tab-panel>
      </q-tab-panels>
      <q-separator></q-separator>
      <q-tabs v-model="tab" class="text-secondary">
        <q-tab label="Login" name="one" class="col"></q-tab>
        <q-tab label="Reset Password" name="two" class="col"></q-tab>
        <q-tab label="Change Password" name="three" class="col"></q-tab>
      </q-tabs>
    </q-card>
  </div>
</div>
<!-- partial -->
<script src='https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js'></script>
<script src='https://cdn.jsdelivr.net/npm/quasar@1.14.5/dist/quasar.umd.min.js'></script>
<script>

  new Vue({
    el: '#q-app',
    data() {
      return {
        tab: 'one' ,
        formData: {
          email: '',
          password: ''
        }
      }
    },
    methods: {
      submitForm () {
        console.log('submitForm' + this.formData)
        // this.$store.actions.auth.loginUser(this.formData)
        console.log('loggedIn:', this.$store.state.auth.loggedIn)
      },
      isValidEmailAddress (email) {
        var re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
        return re.test(String(email).toLowerCase())
      }
    }
  });
</script>

</body>
</html>
